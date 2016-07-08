//
//  UIViewController+DLNStoryBoard.h
//  DLNUIRepo
//
//  Created by Linzh on 4/15/16.
//  Copyright © 2016 Daniel Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (DLNStoryBoard)

- (__kindof UIViewController *)instantiateViewControllerWithId:(NSString *)vcId;

- (__kindof UIViewController *)instantiateViewControllerWithId:(NSString *)vcId storyboardName:(nullable NSString *)sbName;
@end

NS_ASSUME_NONNULL_END
