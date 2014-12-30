//
// Created by WalterInSH on 12/28/14.
// Copyright (c) 2014 WalterInSH. All rights reserved.
//

#import "FriendManager.h"
#import "Friend.h"
#import "AFHTTPRequestOperationManager.h"
#import "Configuration.h"

@implementation FriendManager

static const NSMutableArray *allFriends;
static const NSString *getFriendsApi;

+ (void)initialize {
    [super initialize];
    allFriends = [[NSMutableArray alloc] init];
    NSDictionary *configs = [Configuration loadDefaultConfiguration];
    NSString *serverAddress = [configs objectForKey:@"ServerAddress"];
    getFriendsApi = [[NSString alloc] initWithFormat:@"%@/%@", serverAddress,@"friends"];
}


- (void)loadFriendsFromServer {
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:getFriendsApi parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSArray *friendArray = responseObject;
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
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"网络异常" message:@"暂时无法获取通讯录" delegate:self cancelButtonTitle:@"好" otherButtonTitles:nil];
        [alert show];
    }];
}

- (NSMutableArray *)getFriends {
    return [NSArray arrayWithArray:allFriends];
}

- (NSUInteger)friendCount {
    return [allFriends count];
}

- (BOOL)deleteFriendWithId:(NSInteger) friendId{

    return FALSE;
}

@end