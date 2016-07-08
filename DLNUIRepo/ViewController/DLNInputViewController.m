//
//  DLNInputViewController.m
//  DLNUIRepo
//
//  Created by Linzh on 14/10/24.
//  Copyright (c) 2014年 Linzh. All rights reserved.
//

#import "DLNInputViewController.h"

@interface DLNInputViewController ()
@property (nonatomic, assign) BOOL isKeyboardVisible;
@property (nonatomic, assign) BOOL viewOffset;
@property (nonatomic, assign) CGFloat originX;
@property (nonatomic, assign) CGFloat originY;
@property (nonatomic, strong) UIView *keyboardSender;
@property (nonatomic, assign) CGPoint keyboardPoint;
@end

@implementation DLNInputViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self addKeyboardNotification];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    _originX = self.view.frame.origin.x;
    _originY = self.view.frame.origin.y;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self removeKeyboardNotification];
}

#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    self.keyboardSender = textField;
    return YES;
}

#pragma mark - Private
- (void)addKeyboardNotification {
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    [center addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    [center addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    [center addObserver:self selector:@selector(keyboardDidChangeFrame:) name:UIKeyboardDidChangeFrameNotification object:nil];
}

- (void)removeKeyboardNotification {
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    [center removeObserver:self name:UIKeyboardWillShowNotification object:nil];
    [center removeObserver:self name:UIKeyboardWillHideNotification object:nil];
    [center removeObserver:self name:UIKeyboardDidChangeFrameNotification object:nil];
}

- (void)viewFrameOffset:(NSNotification *)notification {
    if (self.keyboardSender) {
        if (notification) {
            _keyboardPoint = [[[notification userInfo] objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].origin;
        }
        
        CGRect frame = [self.keyboardSender convertRect:self.keyboardSender.bounds toView:self.view];
        CGFloat y = frame.origin.y + self.keyboardSender.frame.size.height;
//        self.keyboardSender = nil;
        
        if (y + _originY > _keyboardPoint.y) {
            _viewOffset = YES;
            CGFloat offset = y - _keyboardPoint.y;
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:0.3];
            self.view.frame = CGRectMake(0, -offset, self.view.frame.size.width, self.view.frame.size.height);
            [UIView commitAnimations];
        }
    }
}

- (void)keyboardDidChangeFrame:(NSNotification *)notification {
    [self viewFrameOffset:notification];
}

- (void)keyboardWillShow:(NSNotification *)notification {
    if (!_isKeyboardVisible) {
        _isKeyboardVisible = YES;
        [self viewFrameOffset:notification];
    }
}

- (void)keyboardWillHide:(NSNotification *)notification {
    _isKeyboardVisible = NO;
    
    if (_viewOffset) {
        _viewOffset = NO;
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:0.3];
        self.view.frame = CGRectMake(_originX, _originY, self.view.frame.size.width, self.view.frame.size.height);
        [UIView commitAnimations];
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    UITouch *touch = [touches anyObject];
    UIView *view = [touch view];
    if (_isKeyboardVisible && view == self.view) {
        [self hideKeyboard];
    }
}

#pragma mark - Public
- (void)hideKeyboard {
    if (_isKeyboardVisible) {
        [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
    }
}

- (void)setInputViewSender:(id)sender {
    self.keyboardSender = sender;
}

- (void)viewFrameOffset {
    if (_isKeyboardVisible) {
        [self viewFrameOffset:nil];
    }
}
@end
