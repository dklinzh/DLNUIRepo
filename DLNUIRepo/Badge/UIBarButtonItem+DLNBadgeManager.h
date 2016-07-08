//
//  UIBarButtonItem+DLNBadgeManager.h
//  DLNUIRepo
//
//  Created by Linzh on 11/27/15.
//  Copyright © 2015 Daniel Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (DLNBadgeManager)
- (void)showNewStyleBadge;
- (void)showNewStyleBadgeForKey:(NSString *)key;
- (void)showDotStyleBadge;
- (void)showDotStyleBadgeForKey:(NSString *)key;
- (void)showNumberStyleBadgeWithNumber:(NSInteger)number;
- (void)showNumberStyleBadgeWithNumber:(NSInteger)number forKey:(NSString *)key;
- (void)hideBadge;
@end
