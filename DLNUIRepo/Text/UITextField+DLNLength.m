//
//  UITextField+DLNLength.m
//  DLNUIRepo
//
//  Created by Linzh on 5/25/16.
//  Copyright © 2016 Daniel Lin. All rights reserved.
//

#import "UITextField+DLNLength.h"
#import <DLNCore/NSObject+DLNProperty.h>

@interface UITextField ()
@property (nonatomic, assign) NSUInteger maxLength;
@property (nonatomic, assign) int didAddObserver;
@end

@implementation UITextField (DLNLength)
+ (void)load {
    [self dln_addBasicProperty:@"maxLength" encodingType:@encode(NSUInteger)];
    [self dln_addBasicProperty:@"didAddObserver" encodingType:@encode(int)];

    Method origMethod = class_getInstanceMethod([self class], NSSelectorFromString(@"dealloc"));
    Method newMethod = class_getInstanceMethod([self class], @selector(dln_dealloc));
    method_exchangeImplementations(origMethod, newMethod);
}

- (void)dln_dealloc {
    if (self.didAddObserver == -1) {
        [[NSNotificationCenter defaultCenter] removeObserver:self name:UITextFieldTextDidChangeNotification object:self];
    }
    
    [self dln_dealloc];
}

#pragma mark - Public
- (void)dln_setMaxLength:(NSUInteger)maxLength {
    if (maxLength == 0) {
        return;
    }
    
    self.maxLength = maxLength;
    
    if (self.didAddObserver != -1) {
        self.didAddObserver = -1;
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldDidChange:) name:UITextFieldTextDidChangeNotification object:self];
    }
}

#pragma mark - Private
- (void)textFieldDidChange:(NSNotification *)notification {
    //    UITextField *textField = (UITextField *)obj.object;
    //    NSString *toBeString = self.text;
    NSString *lang = [[[notification object] textInputMode] primaryLanguage]; // 键盘输入模式
    if ([lang isEqualToString:@"zh-Hans"]) { // 简体中文输入，包括简体拼音，简体五笔，简体手写
        UITextRange *selectedRange = [self markedTextRange];       //获取高亮部分
        UITextPosition *position = [self positionFromPosition:selectedRange.start offset:0];
        // 没有高亮选择的字，则对已输入的文字进行字数统计和限制
        if (!position || !selectedRange) {
            [self substringInMaxLength];
        } else { // 有高亮选择的字符串，则暂不对文字进行统计和限制
            
        }
    } else{ // 中文输入法以外的直接对其统计限制即可，不考虑其他语种情况
        [self substringInMaxLength];
    }
}

- (void)substringInMaxLength {
    NSString *toBeString = self.text;
    if (toBeString.length > self.maxLength) {
        NSRange rangeIndex = [toBeString rangeOfComposedCharacterSequenceAtIndex:self.maxLength];
        if (rangeIndex.length == 1) {
            self.text = [toBeString substringToIndex:self.maxLength];
        } else {
            NSRange rangeRange = [toBeString rangeOfComposedCharacterSequencesForRange:NSMakeRange(0, self.maxLength)];
            self.text = [toBeString substringWithRange:rangeRange];
        }
    }
}
@end
