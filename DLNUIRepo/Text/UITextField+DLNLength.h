//
//  UITextField+DLNLength.h
//  DLNUIRepo
//
//  Created by Linzh on 5/25/16.
//  Copyright © 2016 Daniel Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (DLNLength)
/**
 *  Set the max length of text for UITextField.
 *
 *  @param maxLength max length of text
 */
- (void)dln_setMaxLength:(NSUInteger)maxLength;
@end
