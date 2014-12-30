//
// Created by WalterInSH on 12/28/14.
// Copyright (c) 2014 WalterInSH. All rights reserved.
//

#import "FriendManager.h"
#import "Friend.h"

@implementation FriendManager

static const NSMutableArray *allFriends;

+ (void)initialize {
    [super initialize];
    allFriends = [[NSMutableArray alloc] init];
}


- (void)loadFriendsFromServer {
    NSString *dataJson = @"";
    NSArray *friendArray = [dataJson objectFromJSONString];
    NSMutableArray *remoteData = [[NSMutableArray alloc] init];
    for (int i = 0; i < [friendArray count]; ++i) {
        NSDictionary *friendDic = [friendArray objectAtIndex:i];
        int userId = [[friendDic objectForKey:@"userId"] intValue];
        NSString *name = [friendDic objectForKey:@"name"];

        Friend *friend = [[Friend alloc] init];
        friend.userId = userId;
        friend.name = name;
        [remoteData addObject:friend];
    }
    [allFriends removeAllObjects];
    NSSortDescriptor *descriptor = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
    [allFriends addObjectsFromArray:[remoteData sortedArrayUsingDescriptors:@[descriptor]]];
}

- (NSMutableArray *)getFriends {
    return [allFriends subarrayWithRange:NSMakeRange(0, [allFriends count])];
}

- (NSUInteger)friendCount {
    return [allFriends count];
}

- (BOOL)deleteFriendWithId:(NSInteger) friendId{

    return FALSE;
}

@end