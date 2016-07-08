//
//  UIView+NaturalMotion.h
//  DLNUIRepo
//
//  Created by Linzh on 14/11/21.
//  Copyright (c) 2014年 Linzh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (NaturalMotion)
/**
 *  Make a view look like it’s floating above other views
 *
 *  @param maximumRealtiveValue <#maximumRealtiveValue description#>
 */
- (void)addNaturalOnTopEffectWithMaximumRelativeValue:(CGFloat)maximumRealtiveValue;

/**
 *  Make a view look like it’s floating behind other views
 *
 *  @param maximumRealtiveValue <#maximumRealtiveValue description#>
 */
- (void)addNaturalBelowEffectWithMaximumRelativeValue:(CGFloat)maximumRealtiveValue;

/**
 *  Remove Effects
 */
- (void)removeMotionEffects;
@end
