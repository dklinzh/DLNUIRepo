//
//  TranslucentLayerView.m
//  DLNUIRepo
//
//  Created by Linzh on 14/11/17.
//  Copyright (c) 2014年 Linzh. All rights reserved.
//

#import "DLNTranslucentLayerView.h"

@interface DLNTranslucentLayerView ()
@property (nonatomic, assign) CGRect holdRect;
@property (nonatomic, assign) CGFloat white;
@property (nonatomic, assign) CGFloat alpha;
@end

@implementation DLNTranslucentLayerView
#pragma mark - Override
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.opaque = NO;
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [[UIColor colorWithWhite:self.white alpha:self.alpha] setFill];
    UIRectFill(rect);
    CGRect holeRectIntersection = CGRectIntersection(self.holdRect, rect);
    [[UIColor clearColor] setFill];
    UIRectFill(holeRectIntersection);
}

#pragma mark - Public
- (void)setBackgroundColorWithWhite:(CGFloat)white alpha:(CGFloat)alpha withHoleRect:(CGRect)rect {
    self.white = white;
    self.alpha = alpha;
    self.holdRect = rect;
}

@end
