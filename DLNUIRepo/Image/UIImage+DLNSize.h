//
//  UIImage+DLNSize.h
//  DLNUIRepo
//
//  Created by Linzh on 12/25/15.
//  Copyright © 2015 Daniel Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (DLNSize)
/**
 *  Return a new image instance has been resized.
 *
 *  @param size <#size description#>
 *
 *  @return <#return value description#>
 */
- (UIImage *)dln_scaleToSize:(CGSize)size;
@end
