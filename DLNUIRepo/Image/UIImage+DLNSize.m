//
//  UIImage+DLNSize.m
//  DLNUIRepo
//
//  Created by Linzh on 12/25/15.
//  Copyright © 2015 Daniel Lin. All rights reserved.
//

#import "UIImage+DLNSize.h"

@implementation UIImage (DLNSize)

- (UIImage *)dln_scaleToSize:(CGSize)size {
    // 创建一个bitmap的context
    // 并把它设置成为当前正在使用的context
    UIGraphicsBeginImageContext(size);
    
    // 绘制改变大小的图片
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    
    // 从当前context中创建一个改变大小后的图片
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    // 使当前的context出堆栈
    UIGraphicsEndImageContext();
    
    return scaledImage;
}
@end
