//
//  UIView+DLNBorder.h
//  DLNUIRepo
//
//  Created by Linzh on 8/21/15.
//  Copyright (c) 2015 Linzh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (DLNBorder)
/**
 *  set custom border properties of view.
 *
 *  @param width  <#width description#>
 *  @param color  <#color description#>
 *  @param radius <#radius description#>
 */
- (void)dln_setBorderWidth:(CGFloat)width color:(UIColor *)color cornerRadius:(CGFloat)radius;
@end
