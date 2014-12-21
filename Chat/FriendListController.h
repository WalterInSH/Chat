//
// Created by WalterInSH on 12/19/14.
// Copyright (c) 2014 WalterInSH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WISViewController.h"


@interface FriendListController : WISViewController<UITableViewDataSource,UITableViewDelegate>{
}
@property (nonatomic, readonly) NSMutableArray *friends;
@end

@interface Friend :NSObject
@property (assign, nonatomic) int userId;
@property (strong, nonatomic) NSString *name;
@end