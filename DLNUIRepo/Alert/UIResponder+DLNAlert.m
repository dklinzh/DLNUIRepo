//
//  UIResponder+DLNAlert.m
//  SmartCommunity
//
//  Created by Linzh on 4/20/16.
//  Copyright © 2016 Horizon. All rights reserved.
//
// FIXME:
//#import "UIResponder+DLNAlert.h"
//
//@implementation UIResponder (DLNAlert)
//- (void)showAlert:(NSString *)title andMsg:(NSString *)msg {
//  UIAlertView *alert =
//      [[UIAlertView alloc] initWithTitle:title
//                                 message:msg
//                                delegate:nil
//                       cancelButtonTitle:DLNUIRepoLocalizedString(@"返回")
//                       otherButtonTitles:nil, nil];
//  [alert show];
//}
//
//- (void)showPrompt:(NSString *)msg {
//  UIAlertView *alert =
//      [[UIAlertView alloc] initWithTitle:DLNUIRepoLocalizedString(@"提示")
//                                 message:msg
//                                delegate:nil
//                       cancelButtonTitle:nil
//                       otherButtonTitles:nil, nil];
//  alert.backgroundColor = rgba(0xAA, 0xAA, 0xAA, 0.5);
//  [NSTimer scheduledTimerWithTimeInterval:1.5
//                                   target:self
//                                 selector:@selector(dissmissPrompt:)
//                                 userInfo:alert
//                                  repeats:NO];
//  [alert show];
//}
//
//- (void)dissmissPrompt:(NSTimer *)timer {
//  UIAlertView *alert = (UIAlertView *)timer.userInfo;
//  [alert dismissWithClickedButtonIndex:0 animated:YES];
//  alert = nil;
//}
//@end
