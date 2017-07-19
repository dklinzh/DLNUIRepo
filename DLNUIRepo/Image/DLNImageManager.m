//
//  DLNImageManager.m
//  DLNUIRepo
//
//  Created by Linzh on 12/28/15.
//  Copyright © 2015 Daniel Lin. All rights reserved.
//
// FIXME:
//#import "DLNImageManager.h"
//#import <SDWebImage/SDImageCache.h>
//
//@implementation DLNImageManager
//static DLNImageManager *sharedInstance = nil;
//
//+ (instancetype)allocWithZone:(struct _NSZone *)zone {
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken,^{
//        sharedInstance = [super allocWithZone:zone];
//    });
//    return sharedInstance;
//}
//
//#pragma mark - Public 
//+ (instancetype)sharedInstance {
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        if (!sharedInstance) {
//            sharedInstance = [[self alloc] init];
//        }
//    });
//    return sharedInstance;
//}
//
//- (void)cleanDiskCacheAfterExpiration:(NSInteger)seconds {
//    if (seconds > 0) {
//        [SDImageCache sharedImageCache].maxCacheAge = seconds;
//    }
//    
//    [[SDImageCache sharedImageCache] cleanDisk];
//}
//@end
