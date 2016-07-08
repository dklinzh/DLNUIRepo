//
//  UIView+NaturalMotion.m
//  DLNUIRepo
//
//  Created by Linzh on 14/11/21.
//  Copyright (c) 2014年 Linzh. All rights reserved.
//

#import "UIView+NaturalMotion.h"

@implementation UIView (NaturalMotion)
- (void)addNaturalOnTopEffectWithMaximumRelativeValue:(CGFloat)maximumRealtiveValue {
    UIInterpolatingMotionEffect* motionEffect = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
    motionEffect.minimumRelativeValue = @(maximumRealtiveValue);
    motionEffect.maximumRelativeValue = @(-maximumRealtiveValue);
    [self addMotionEffect:motionEffect];
    motionEffect = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    motionEffect.minimumRelativeValue = @(maximumRealtiveValue);
    motionEffect.maximumRelativeValue = @(-maximumRealtiveValue);
    [self addMotionEffect:motionEffect];
}

- (void)addNaturalBelowEffectWithMaximumRelativeValue:(CGFloat)maximumRealtiveValue {
    UIInterpolatingMotionEffect* motionEffect = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
    motionEffect.minimumRelativeValue = @(-maximumRealtiveValue);
    motionEffect.maximumRelativeValue = @(maximumRealtiveValue);
    [self addMotionEffect:motionEffect];
    motionEffect = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    motionEffect.minimumRelativeValue = @(-maximumRealtiveValue);
    motionEffect.maximumRelativeValue = @(maximumRealtiveValue);
    [self addMotionEffect:motionEffect];
}

- (void)removeMotionEffects {
    NSArray *motionEffects = [NSArray arrayWithArray:self.motionEffects];
    [motionEffects enumerateObjectsUsingBlock:^(UIMotionEffect *motionEffect, NSUInteger idx, BOOL *stop) {
        [self removeMotionEffect:motionEffect];
    }];
}
@end
