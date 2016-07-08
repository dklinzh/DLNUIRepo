//
//  UIToolbar+DLNItems.m
//  DLNUIRepo
//
//  Created by Linzh on 3/2/16.
//  Copyright © 2016 Daniel Lin. All rights reserved.
//

#import "UIToolbar+DLNItems.h"

@implementation UIToolbar (DLNItems)

- (instancetype)initWithItemTitle:(NSString *)title tintColor:(UIColor *)color target:(id)target action:(SEL)action {
    if (self = [super init]) {
        [self sizeToFit];
        self.barStyle = UIBarStyleDefault;
        self.translucent = YES;
        self.tintColor = color;
        UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithTitle:title style:UIBarButtonItemStyleBordered target:target action:action];
        UIBarButtonItem *flexibleSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
        [self setItems:@[flexibleSpace, doneButton]];
    }
    return self;
}

@end
