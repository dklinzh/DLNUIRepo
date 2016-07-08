//
//  CALayer+DLNBorder.m
//  DLNUIRepo
//
//  Created by Linzh on 12/25/15.
//  Copyright © 2015 Daniel Lin. All rights reserved.
//

#import "CALayer+DLNBorder.h"

@implementation CALayer (DLNBorder)

- (void)setDln_borderColor:(UIColor *)dln_borderColor {
    self.borderColor = dln_borderColor.CGColor;
}

- (UIColor *)dln_borderColor {
    return [UIColor colorWithCGColor:self.borderColor];
}
@end
