//
//  UIStoryboard+DLNBundle.h
//  DLNUIRepo
//
//  Created by Linzh on 7/21/16.
//  Copyright © 2016 Daniel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIStoryboard (DLNBundle)
/**
 *  return the storyboard with specified name.
 *
 *  @param name       the name of storyboard
 *  @param bundleName the name of bundle which the storyboard is in or nil
 *
 *  @return UIStoryboard object
 */
+ (instancetype)dln_storyboardWithName:(NSString *)name bundleName:(NSString *)bundleName;
@end
