//
//  DLNShaker.h
//  DLNUIRepo
//
//  Created by Linzh on 11/21/15.
//  Copyright © 2015 Horizon. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DLNShakerDelegate <NSObject>

@optional
- (void)shakingIsEffective;

@end

typedef void(^ShakedBlock) ();

@interface DLNShaker : NSObject
@property (nonatomic, assign) NSTimeInterval updateInterval;
@property (nonatomic, assign) double shakeExtent;
@property (nonatomic, weak) id<DLNShakerDelegate> delegate;

+ (instancetype)sharedInstance;

- (void)startUpdate;
- (void)stopUpdate;
- (void)shakingActionDone;
@end
