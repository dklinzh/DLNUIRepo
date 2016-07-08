//
//  DLNShaker.m
//  DLNUIRepo
//
//  Created by Linzh on 11/21/15.
//  Copyright © 2015 Horizon. All rights reserved.
//

#import "DLNShaker.h"
#import <CoreMotion/CoreMotion.h>

#define DLN_DEFAULT_UPDATE_INTERVAL 1.0
#define DLN_DEFAULT_SHAKE_EXTENT 1.0

@interface DLNShaker ()
@property (strong, nonatomic) CMMotionManager *motionManager;
@property (assign, nonatomic) double lastExtent;
@property (assign, nonatomic) CMAcceleration lastAcceleration;
@property (assign, nonatomic) BOOL updatePaused;
@property (assign, nonatomic) BOOL isUpdating;
@end

@implementation DLNShaker

- (void)dealloc {
    self.delegate = nil;
}

#pragma mark - Public
+ (instancetype)sharedInstance {
    static DLNShaker *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!sharedInstance) {
            sharedInstance = [[self alloc] init];
        }
    });
    return sharedInstance;
}

- (void)startUpdate {
    if (!self.isUpdating) {
        [self startMotionManager];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(stopMotionManager)
                                                     name:UIApplicationDidEnterBackgroundNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(startMotionManager)
                                                     name:UIApplicationDidBecomeActiveNotification object:nil];
    }
}

- (void)stopUpdate {
    if (self.isUpdating) {
        [self stopMotionManager];
        
        [[NSNotificationCenter defaultCenter] removeObserver:self
                                                        name:UIApplicationDidEnterBackgroundNotification object:nil];
        [[NSNotificationCenter defaultCenter] removeObserver:self
                                                        name:UIApplicationDidBecomeActiveNotification object:nil];
    }
}

- (void)shakingActionDone {
    if (self.updatePaused) {
        self.updatePaused = NO;
        [self startUpdate];
    }
}

#pragma mark - Private
- (void)startMotionManager {
    if (!self.isUpdating) {
        self.isUpdating = YES;
        __weak __typeof(self)weakSelf = self;
        [self.motionManager startAccelerometerUpdatesToQueue:[[NSOperationQueue alloc] init] withHandler:^(CMAccelerometerData *accelerometerData, NSError *error) {
            if (error) {
                DDLogError(@"DLNShaker motion error: %@", error);
                return;
            }
            __strong __typeof(weakSelf)strongSelf = weakSelf;
            if ([strongSelf isShakingEffective:accelerometerData.acceleration]) {
                [strongSelf stopUpdate];
                strongSelf.updatePaused = YES;
                dispatch_async(dispatch_get_main_queue(), ^{
                    if ([strongSelf.delegate respondsToSelector:@selector(shakingIsEffective)]) {
                        [strongSelf.delegate shakingIsEffective];
                    }
                });
            }
        }];
    }
}

- (void)stopMotionManager {
    if (self.isUpdating) {
        self.isUpdating = NO;
        [self.motionManager stopAccelerometerUpdates];
    }
}

- (BOOL)isShakingEffective:(CMAcceleration)acceleration {
    double extent =sqrt(pow(self.lastAcceleration.x - acceleration.x, 2) + pow(self.lastAcceleration.y - acceleration.y, 2)/* + pow(self.lastAcceleration.z - acceleration.z, 2)*/);
//    DDLogInfo(@"DLNShaker shakeExtent: %f", extent);
    
    self.lastAcceleration = acceleration;
    
    if (self.lastExtent < self.shakeExtent) {
        self.lastExtent = extent;
        return NO;
    } else {
        self.lastExtent = 0;
        return extent > self.shakeExtent;
    }
}

#pragma mark - Getter
- (CMMotionManager *)motionManager {
    if (_motionManager) {
        return _motionManager;
    }
    _motionManager = [[CMMotionManager alloc] init];
    _motionManager.accelerometerUpdateInterval = self.updateInterval;
    return _motionManager;
}

- (NSTimeInterval)updateInterval {
    if (_updateInterval) {
        return _updateInterval;
    }
    return DLN_DEFAULT_UPDATE_INTERVAL;
}

- (double)shakeExtent {
    if (_shakeExtent) {
        return _shakeExtent;
    }
    return DLN_DEFAULT_SHAKE_EXTENT;
}
@end
