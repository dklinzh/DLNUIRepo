//
//  UIImageView+DLNLoader.m
//  DLNUIRepo
//
//  Created by Linzh on 12/28/15.
//  Copyright © 2015 Daniel Lin. All rights reserved.
//

#import "UIImageView+DLNLoader.h"
#import "DLNImageManager.h"

@implementation UIImageView (DLNLoader)

- (void)dln_setImageWithURL:(NSString *)urlString {
    [self dln_setImageWithURL:urlString placeholderImage:nil options:0 progress:nil completed:nil];
}

- (void)dln_setImageWithURL:(NSString *)urlString placeholderImage:(NSString *)imageName {
    [self dln_setImageWithURL:urlString placeholderImage:imageName options:0 progress:nil completed:nil];
}

- (void)dln_setImageWithURL:(NSString *)urlString placeholderImage:(NSString *)imageName options:(SDWebImageOptions)options {
    [self dln_setImageWithURL:urlString placeholderImage:imageName options:options progress:nil completed:nil];
}

- (void)dln_setImageWithURL:(NSString *)urlString completed:(SDWebImageCompletionBlock)completedBlock {
    [self dln_setImageWithURL:urlString placeholderImage:nil options:0 progress:nil completed:completedBlock];
}

- (void)dln_setImageWithURL:(NSString *)urlString placeholderImage:(NSString *)imageName completed:(SDWebImageCompletionBlock)completedBlock {
    [self dln_setImageWithURL:urlString placeholderImage:imageName options:0 progress:nil completed:completedBlock];
}

- (void)dln_setImageWithURL:(NSString *)urlString placeholderImage:(NSString *)imageName options:(SDWebImageOptions)options completed:(SDWebImageCompletionBlock)completedBlock {
    [self dln_setImageWithURL:urlString placeholderImage:imageName options:options progress:nil completed:completedBlock];
}

- (void)dln_setImageWithURL:(NSString *)urlString placeholderImage:(NSString *)imageName options:(SDWebImageOptions)options progress:(SDWebImageDownloaderProgressBlock)progressBlock completed:(SDWebImageCompletionBlock)completedBlock {
    if ([[DLNImageManager sharedInstance].delegate respondsToSelector:@selector(imageUrlWillBeLoaded:)]) {
        urlString = [[DLNImageManager sharedInstance].delegate imageUrlWillBeLoaded:urlString];
    }
    NSURL *url = [NSURL URLWithString:urlString];
    UIImage *image = imageName ? [UIImage imageNamed:imageName] : nil;
    [self sd_setImageWithURL:url placeholderImage:image options:options progress:progressBlock completed:completedBlock];
}
@end
