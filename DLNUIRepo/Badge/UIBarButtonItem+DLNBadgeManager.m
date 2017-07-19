//
//  UIBarButtonItem+DLNBadgeManager.m
//  DLNUIRepo
//
//  Created by Linzh on 11/27/15.
//  Copyright © 2015 Daniel Lin. All rights reserved.
//
// FIXME:
//#import "UIBarButtonItem+DLNBadgeManager.h"
//#import "DLNBadgeManager.h"
//#import <objc/runtime.h>
//
//static char *key_dln_badgeKey;
//
//@interface UIBarButtonItem ()
//@property (strong, nonatomic) NSString *dln_badgeKey;
//@end
//
//@implementation UIBarButtonItem (DLNBadgeManager)
//#pragma mark - Public
//- (void)showNewStyleBadge {
//    if (CGPointEqualToPoint(self.badgeCenterOffset, CGPointZero)) {
//        self.badgeCenterOffset = CGPointMake(10, 0);
//    }
//    [self showBadgeWithStyle:WBadgeStyleNew value:0 animationType:self.aniType];
//}
//
//- (void)showNewStyleBadgeForKey:(NSString *)key {
//    if (key) {
//        self.dln_badgeKey = key;
//        if (![[self dlnBadgeGroupUserDefaults] boolForKey:key]) {
//            if (CGPointEqualToPoint(self.badgeCenterOffset, CGPointZero)) {
//                self.badgeCenterOffset = CGPointMake(10, 0);
//            }
//            [self showBadgeWithStyle:WBadgeStyleNew value:0 animationType:self.aniType];
//        }
//    }
//}
//
//- (void)showDotStyleBadge {
//    [self showBadgeWithStyle:WBadgeStyleRedDot value:0 animationType:self.aniType];
//}
//
//- (void)showDotStyleBadgeForKey:(NSString *)key {
//    if (key) {
//        self.dln_badgeKey = key;
//        if (![[self dlnBadgeGroupUserDefaults] boolForKey:key]) {
//            [self showBadgeWithStyle:WBadgeStyleRedDot value:0 animationType:self.aniType];
//        }
//    }
//}
//
//- (void)showNumberStyleBadgeWithNumber:(NSInteger)number {
//    [self showBadgeWithStyle:WBadgeStyleNumber value:number animationType:self.aniType];
//}
//
//- (void)showNumberStyleBadgeWithNumber:(NSInteger)number forKey:(NSString *)key {
//    if (key) {
//        self.dln_badgeKey = key;
//        if (![[self dlnBadgeGroupUserDefaults] boolForKey:key]) {
//            [self showBadgeWithStyle:WBadgeStyleNumber value:number animationType:self.aniType];
//        }
//    }
//}
//
//- (void)hideBadge {
//    NSUserDefaults *userDefaults = [self dlnBadgeGroupUserDefaults];
//    if (self.dln_badgeKey && ![userDefaults boolForKey:self.dln_badgeKey]) {
//        [self clearBadge];
//        
//        [userDefaults setBool:YES forKey:self.dln_badgeKey];
//        [userDefaults synchronize];
//    }
//}
//
//#pragma mark - Private
//- (NSUserDefaults *)dlnBadgeGroupUserDefaults {
//    return [[NSUserDefaults alloc] initWithSuiteName:KeyDLNBadgeGroup];
//}
//
//- (void)setDln_badgeKey:(NSString *)dln_badgeKey {
//    objc_setAssociatedObject(self, key_dln_badgeKey, dln_badgeKey, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
//}
//
//- (NSString *)dln_badgeKey {
//    return objc_getAssociatedObject(self, key_dln_badgeKey);
//}
//@end
