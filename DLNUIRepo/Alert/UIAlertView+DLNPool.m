//
//  UIAlertView+DLNPool.m
//  DLNUIRepo
//
//  Created by Linzh on 12/24/15.
//  Copyright © 2015 Daniel Lin. All rights reserved.
//

#import "UIAlertView+DLNPool.h"
#import <objc/runtime.h>
#import <DLNFoundation/DLNApplicationContext.h>

@implementation UIAlertView (DLNPool)
#ifndef DLN_UI_DYNAMIC_DISABLED
+ (void)load {
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(show)), class_getInstanceMethod(self, @selector(dln_show)));
}

- (void)dln_show {
    [[DLNApplicationContext sharedInstance] addAlertViewObject:self];
    
    [self dln_show];
}
#endif
@end
