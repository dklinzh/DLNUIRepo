//
//  UIViewController+DLNStoryBoard.m
//  DLNUIRepo
//
//  Created by Linzh on 4/15/16.
//  Copyright © 2016 Daniel Lin. All rights reserved.
//

#import "UIViewController+DLNStoryBoard.h"

@implementation UIViewController (DLNStoryBoard)

- (__kindof UIViewController *)instantiateViewControllerWithId:(NSString *)vcId {
    return [self instantiateViewControllerWithId:vcId storyboardName:nil];
}

- (__kindof UIViewController *)instantiateViewControllerWithId:(NSString *)vcId storyboardName:(nullable NSString *)sbName {
    if (sbName) {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:sbName bundle:[NSBundle mainBundle]];
        return [storyboard instantiateViewControllerWithIdentifier:vcId];
    } else {
        return [self.storyboard instantiateViewControllerWithIdentifier:vcId];
    }
}
@end
