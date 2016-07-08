//
//  TranslucentLayerView.h
//  DLNUIRepo
//
//  Created by Linzh on 14/11/17.
//  Copyright (c) 2014年 Linzh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DLNTranslucentLayerView : UIView
/**
 *  设置图层背景颜色及透明区域
 *
 *  @param white <#white description#>
 *  @param alpha <#alpha description#>
 *  @param rect  <#rect description#>
 */
- (void)setBackgroundColorWithWhite:(CGFloat)white alpha:(CGFloat)alpha withHoleRect:(CGRect)rect;
@end
