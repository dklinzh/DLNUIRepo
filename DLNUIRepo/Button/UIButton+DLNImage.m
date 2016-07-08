//
//  UIButton+DLNImage.m
//  DLNUIRepo
//
//  Created by Linzh on 5/6/16.
//  Copyright © 2016 Daniel Lin. All rights reserved.
//

#import "UIButton+DLNImage.h"
#import "DLNImageManager.h"

@implementation UIButton (DLNImage)
#pragma mark - Image
- (void)dln_setImageWithURL:(NSString *)urlString forState:(UIControlState)controlState {
    [self dln_setImageWithURL:urlString forState:controlState placeholderImage:nil options:0 completed:nil];
}

- (void)dln_setImageWithURL:(NSString *)urlString forState:(UIControlState)controlState placeholderImage:(NSString *)imageName {
    [self dln_setImageWithURL:urlString forState:controlState placeholderImage:imageName options:0 completed:nil];
}

- (void)dln_setImageWithURL:(NSString *)urlString forState:(UIControlState)controlState placeholderImage:(NSString *)imageName options:(SDWebImageOptions)options {
    [self dln_setImageWithURL:urlString forState:controlState placeholderImage:imageName options:options completed:nil];
}

- (void)dln_setImageWithURL:(NSString *)urlString forState:(UIControlState)controlState completed:(SDWebImageCompletionBlock)completedBlock {
    [self dln_setImageWithURL:urlString forState:controlState placeholderImage:nil options:0 completed:completedBlock];
}

- (void)dln_setImageWithURL:(NSString *)urlString forState:(UIControlState)controlState placeholderImage:(NSString *)imageName completed:(SDWebImageCompletionBlock)completedBlock {
    [self dln_setImageWithURL:urlString forState:controlState placeholderImage:imageName options:0 completed:completedBlock];
}

- (void)dln_setImageWithURL:(NSString *)urlString forState:(UIControlState)controlState placeholderImage:(NSString *)imageName options:(SDWebImageOptions)options completed:(SDWebImageCompletionBlock)completedBlock {
    if ([[DLNImageManager sharedInstance].delegate respondsToSelector:@selector(imageUrlWillBeLoaded:)]) {
        urlString = [[DLNImageManager sharedInstance].delegate imageUrlWillBeLoaded:urlString];
    }
    NSURL *url = [NSURL URLWithString:urlString];
    UIImage *image = imageName ? [UIImage imageNamed:imageName] : nil;
    [self sd_setImageWithURL:url forState:controlState placeholderImage:image options:options completed:completedBlock];
}

#pragma mark - Background
- (void)dln_setBackgroundImageWithURL:(NSString *)urlString forState:(UIControlState)controlState {
    [self dln_setBackgroundImageWithURL:urlString forState:controlState placeholderImage:nil options:0 completed:nil];
}

- (void)dln_setBackgroundImageWithURL:(NSString *)urlString forState:(UIControlState)controlState placeholderImage:(NSString *)imageName {
    [self dln_setBackgroundImageWithURL:urlString forState:controlState placeholderImage:imageName options:0 completed:nil];
}

- (void)dln_setBackgroundImageWithURL:(NSString *)urlString forState:(UIControlState)controlState placeholderImage:(NSString *)imageName options:(SDWebImageOptions)options {
    [self dln_setBackgroundImageWithURL:urlString forState:controlState placeholderImage:imageName options:options completed:nil];
}

- (void)dln_setBackgroundImageWithURL:(NSString *)urlString forState:(UIControlState)controlState completed:(SDWebImageCompletionBlock)completedBlock {
    [self dln_setBackgroundImageWithURL:urlString forState:controlState placeholderImage:nil options:0 completed:completedBlock];
}

- (void)dln_setBackgroundImageWithURL:(NSString *)urlString forState:(UIControlState)controlState placeholderImage:(NSString *)imageName completed:(SDWebImageCompletionBlock)completedBlock {
    [self dln_setBackgroundImageWithURL:urlString forState:controlState placeholderImage:imageName options:0 completed:completedBlock];
}

- (void)dln_setBackgroundImageWithURL:(NSString *)urlString forState:(UIControlState)controlState placeholderImage:(NSString *)imageName options:(SDWebImageOptions)options completed:(SDWebImageCompletionBlock)completedBlock {
    if ([[DLNImageManager sharedInstance].delegate respondsToSelector:@selector(imageUrlWillBeLoaded:)]) {
        urlString = [[DLNImageManager sharedInstance].delegate imageUrlWillBeLoaded:urlString];
    }
    NSURL *url = [NSURL URLWithString:urlString];
    UIImage *image = imageName ? [UIImage imageNamed:imageName] : nil;
    [self sd_setBackgroundImageWithURL:url forState:controlState placeholderImage:image options:options completed:completedBlock];
}
@end
