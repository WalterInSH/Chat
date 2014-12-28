//
// Created by WalterInSH on 12/28/14.
// Copyright (c) 2014 WalterInSH. All rights reserved.
//

#import "FriendManager.h"
#import "Friend.h"

@implementation FriendManager {
}

static NSMutableArray *allFriends;

+(void)initialize {
    allFriends = [[NSMutableArray alloc] init];
}

+ (void)loadFriendsFromServer {
    NSString *dataJson = @"[{\"userId\":1,\"name\":\"Jim Walker\"},{\"userId\":2,\"name\":\"Tim Cook\"}]";
    NSArray *friendArray = [dataJson objectFromJSONString];
    for (int i = 0; i < [friendArray count]; ++i) {
        NSDictionary *friendDic = [friendArray objectAtIndex:i];
        int userId = [[friendDic objectForKey:@"userId"] intValue];
        NSString *name = [friendDic objectForKey:@"name"];

        Friend *friend = [[Friend alloc] init];
        friend.userId = userId;
        friend.name = name;
        [allFriends addObject:friend];
    }
}

+ (NSMutableArray *)getFriends {
    return [allFriends subarrayWithRange:NSMakeRange(0, [allFriends count])];
}

+(NSUInteger) friendCount{
    return [allFriends count];
}

@end