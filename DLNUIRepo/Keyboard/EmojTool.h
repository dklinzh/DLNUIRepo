//
//  EmojTool.h
//  SmartCommunity
//
//  Created by Linzh on 4/18/16.
//  Copyright © 2016 Horizon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DLNEmojInfo : NSObject
@property(nonatomic, copy) NSString *emjStr;
@property(nonatomic, copy) NSString *imageName;
@property(nonatomic, copy) NSString *codeID;
@property(nonatomic, assign) NSUInteger index;
@end

@interface EmojTool : NSObject
+ (DLNEmojInfo *)emojAtIndex:(NSUInteger)index;
+ (NSInteger)emojCount;
+ (BOOL)isEmojStr:(NSString *)emojStr;
@end
