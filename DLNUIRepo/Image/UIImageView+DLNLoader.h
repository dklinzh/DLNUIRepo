//
//  UIImageView+DLNLoader.h
//  DLNUIRepo
//
//  Created by Linzh on 12/28/15.
//  Copyright © 2015 Daniel Lin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SDWebImage/UIImageView+WebCache.h>

@interface UIImageView (DLNLoader)

- (void)dln_setImageWithURL:(NSString *)urlString;

- (void)dln_setImageWithURL:(NSString *)urlString placeholderImage:(NSString *)imageName;

- (void)dln_setImageWithURL:(NSString *)urlString placeholderImage:(NSString *)imageName options:(SDWebImageOptions)options;

- (void)dln_setImageWithURL:(NSString *)urlString completed:(SDWebImageCompletionBlock)completedBlock;

- (void)dln_setImageWithURL:(NSString *)urlString placeholderImage:(NSString *)imageName completed:(SDWebImageCompletionBlock)completedBlock;

- (void)dln_setImageWithURL:(NSString *)urlString placeholderImage:(NSString *)imageName options:(SDWebImageOptions)options completed:(SDWebImageCompletionBlock)completedBlock;

- (void)dln_setImageWithURL:(NSString *)urlString placeholderImage:(NSString *)imageName options:(SDWebImageOptions)options progress:(SDWebImageDownloaderProgressBlock)progressBlock completed:(SDWebImageCompletionBlock)completedBlock;
@end
