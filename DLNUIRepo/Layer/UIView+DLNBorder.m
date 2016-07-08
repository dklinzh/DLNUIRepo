//
//  UIView+DLNBorder.m
//  DLNUIRepo
//
//  Created by Linzh on 8/21/15.
//  Copyright (c) 2015 Linzh. All rights reserved.
//

#import "UIView+DLNBorder.h"

@implementation UIView (DLNBorder)
- (void)dln_setBorderWidth:(CGFloat)width color:(UIColor *)color cornerRadius:(CGFloat)radius {
    self.layer.masksToBounds = YES;
    self.layer.borderWidth = width;
    self.layer.borderColor = [color CGColor];
    self.layer.cornerRadius = radius;
}
@end
