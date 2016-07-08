//
//  UIResponder+DLNAlert.h
//  SmartCommunity
//
//  Created by Linzh on 4/20/16.
//  Copyright © 2016 Horizon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIResponder (DLNAlert)
- (void)showAlert:(NSString *)title andMsg:(NSString *)msg;
- (void)showPrompt:(NSString *)msg;
@end
