// Created by WalterInSH on 12/19/14.
// Copyright (c) 2014 WalterInSH. All rights reserved.
//

#import "FriendListController.h"
#import "JSONKit.h"


@implementation FriendListController

- (void)viewDidLoad {
    [super viewDidLoad];
    _friends = [[NSMutableArray alloc] init];
    [self loadFriendList];
    self.edgesForExtendedLayout=UIRectEdgeNone;
    self.extendedLayoutIncludesOpaqueBars=NO;
    self.automaticallyAdjustsScrollViewInsets=NO;
    self.modalPresentationCapturesStatusBarAppearance = NO;
}

- (void)loadFriendList {
    NSString *dataJson = @"[{\"userId\":1,\"name\":\"Jim Walker\"},{\"userId\":2,\"name\":\"Tim Cook\"}]";
    NSArray *friendArray = [dataJson objectFromJSONString];
    for (int i = 0; i < [friendArray count]; ++i) {
        NSDictionary *friendDic = [friendArray objectAtIndex:i];
        int userId = [[friendDic objectForKey:@"userId"] intValue];
        NSString *name = [friendDic objectForKey:@"name"];

        Friend *friend = [[Friend alloc] init];
        friend.userId = userId;
        friend.name = name;
        [_friends addObject:friend];
    }
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_friends count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"SimpleTableItem";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];

    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }

    cell.textLabel.text = [[_friends objectAtIndex:indexPath.row] name];
    return cell;
}
@end

@implementation Friend
@synthesize userId;
@synthesize name;
@end