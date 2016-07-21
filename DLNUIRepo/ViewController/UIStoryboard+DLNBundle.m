//
//  UIStoryboard+DLNBundle.m
//  DLNUIRepo
//
//  Created by Linzh on 7/21/16.
//  Copyright © 2016 Daniel. All rights reserved.
//

#import "UIStoryboard+DLNBundle.h"
#import "DLNBundle.h"

@implementation UIStoryboard (DLNBundle)

+ (instancetype)dln_storyboardWithName:(NSString *)name bundleName:(NSString *)bundleName {
    NSBundle *bundle = [DLNBundle bundleWithName:bundleName];
    return [UIStoryboard storyboardWithName:name bundle:bundle];
}
@end
