//
//  UIToolbar+DLNItems.h
//  DLNUIRepo
//
//  Created by Linzh on 3/2/16.
//  Copyright © 2016 Daniel Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIToolbar (DLNItems)

- (instancetype)initWithItemTitle:(NSString *)title tintColor:(UIColor *)color target:(id)target action:(SEL)action;
@end
