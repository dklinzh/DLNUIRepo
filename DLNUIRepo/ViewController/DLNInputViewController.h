//
//  DLNInputViewController.h
//  DLNUIRepo
//
//  Created by Linzh on 14/10/24.
//  Copyright (c) 2014年 Linzh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DLNInputViewController : UIViewController <UITextFieldDelegate>
/**
 *  Hide keyboard manually.
 */
- (void)hideKeyboard;

/**
 *  Set inputview sender
 *
 *  @param sender <#sender description#>
 */
- (void)setInputViewSender:(id)sender;

/**
 *  Manually make this view frame offset if the keyboard has been shown.
 */
- (void)viewFrameOffset;
@end
