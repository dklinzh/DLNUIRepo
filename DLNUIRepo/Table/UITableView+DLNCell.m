//
//  UITableView+DLNCell.m
//  DLNUIRepo
//
//  Created by Linzh on 8/14/15.
//  Copyright (c) 2015 Linzh. All rights reserved.
//

#import "UITableView+DLNCell.h"

@implementation UITableView (DLNCell)
- (void)dln_setExtraCellsHidden {
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor clearColor];
    [self setTableFooterView:view];
}
@end
