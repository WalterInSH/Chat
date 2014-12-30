//
// Created by WalterInSH on 12/28/14.
// Copyright (c) 2014 WalterInSH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONKit.h"


@interface FriendManager : NSObject

- (void)loadFriendsFromServer;

- (NSMutableArray *)getFriends;

- (NSUInteger)friendCount;

- (BOOL)deleteFriendWithId:(NSInteger)friendId;
@end