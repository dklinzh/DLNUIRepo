//
//  DLNHUDHelper.m
//  DLNUIRepo
//
//  Created by Linzh on 11/30/15.
//  Copyright © 2015 Horizon. All rights reserved.
//

#import "DLNHUDHelper.h"
#import "KVNProgress.h"
#import "MBProgressHUD.h"

@interface DLNHUDHelper ()
@property (strong, nonatomic) KVNProgressConfiguration *hudConfiguration;
@end

@implementation DLNHUDHelper
#pragma mark - Override
- (instancetype)init {
    if (self = [super init]) {
        [KVNProgress setConfiguration:self.hudConfiguration];
    }
    return self;
}

#pragma mark - Public
+ (instancetype)sharedInstance {
    static DLNHUDHelper *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!sharedInstance) {
            sharedInstance = [[self alloc] init];
        }
    });
    return sharedInstance;
}

- (void)showOnlyText:(NSString *)text onView:(UIView *)superView {
    if (stringNotEmpty(text) && superView) {
        MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:superView animated:YES];
        hud.mode = MBProgressHUDModeText;
        hud.labelText = text;
        hud.margin = 10.f;
        hud.yOffset = superView.frame.size.height/3;
        hud.removeFromSuperViewOnHide = YES;
//        hud.delegate = self;
        
        [hud hide:YES afterDelay:2];
    }
}

- (void)showOnView:(UIView *)superView {
    [self showWithText:nil onView:superView];
}

- (void)showWithText:(NSString *)text onView:(UIView *)superView {
    [KVNProgress showWithStatus:text onView:superView];
}

- (void)showProgress:(CGFloat)progress onView:(UIView *)superView {
    [self showProgress:progress withText:nil onView:superView];
}

- (void)showProgress:(CGFloat)progress withText:(NSString *)text onView:(UIView *)superView {
    [KVNProgress showProgress:progress status:text onView:superView];
}

- (void)showSuccessWithText:(NSString *)text onView:(UIView *)superView {
    [self showSuccessWithText:text onView:superView completion:nil];
}

- (void)showSuccessWithText:(NSString *)text onView:(UIView *)superView completion:(void(^)())completion {
    if (!text) {
        text = DLNUIRepoLocalizedString(@"操作成功");
    }
    [KVNProgress showSuccessWithStatus:text onView:superView completion:completion];
}

- (void)showErrorWithText:(NSString *)text onView:(UIView *)superView {
    [self showErrorWithText:text onView:superView completion:nil];
}

- (void)showErrorWithText:(NSString *)text onView:(UIView *)superView completion:(void(^)())completion {
    if (!text) {
        text = DLNUIRepoLocalizedString(@"操作失败");
    }
    [KVNProgress showErrorWithStatus:text onView:superView completion:completion];
}

- (void)dismiss {
    [KVNProgress dismiss];
}

- (void)dismissWithCompletion:(void(^)())completion {
    [KVNProgress dismissWithCompletion:completion];
}

- (void)updateText:(NSString *)text {
    [KVNProgress updateStatus:text];
}

- (void)updateProgress:(CGFloat)progress animated:(BOOL)animated {
    [KVNProgress updateProgress:progress animated:animated];
}

#pragma mark - Private


#pragma mark - Getter
- (KVNProgressConfiguration *)hudConfiguration {
    if (_hudConfiguration) {
        return _hudConfiguration;
    }
    _hudConfiguration = [[KVNProgressConfiguration alloc] init];
//    _hudConfiguration.backgroundType = KVNProgressBackgroundTypeBlurred;
//    _hudConfiguration.backgroundTintColor = [[UIColor blackColor] colorWithAlphaComponent:0.6];
    _hudConfiguration.backgroundType = KVNProgressBackgroundTypeSolid;
    _hudConfiguration.backgroundFillColor = [[UIColor blackColor] colorWithAlphaComponent:0.75];
    _hudConfiguration.circleStrokeForegroundColor = FlatWhite;
    _hudConfiguration.circleStrokeBackgroundColor = FlatGrayDark;
    _hudConfiguration.circleFillBackgroundColor = [UIColor clearColor];
    _hudConfiguration.circleSize = 50.0f;
    _hudConfiguration.lineWidth = 2.0f;
    _hudConfiguration.statusColor = FlatWhite;
    _hudConfiguration.statusFont = [UIFont systemFontOfSize:14.0f];
    _hudConfiguration.successColor = FlatGreen;
    _hudConfiguration.errorColor = FlatRed;
    _hudConfiguration.minimumSuccessDisplayTime = 1.0;
    _hudConfiguration.minimumErrorDisplayTime = 2.0;
    _hudConfiguration.allowUserInteraction = NO;
    return _hudConfiguration;
}
@end
