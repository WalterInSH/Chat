// Created by WalterInSH on 12/19/14.
// Copyright (c) 2014 WalterInSH. All rights reserved.
//

#import "FriendListController.h"
#import "FriendManager.h"
#import "Friend.h"


@implementation FriendListController{
@private FriendManager *friendManager;
};


- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout=UIRectEdgeNone;
    self.extendedLayoutIncludesOpaqueBars=NO;
    self.automaticallyAdjustsScrollViewInsets=NO;
    self.modalPresentationCapturesStatusBarAppearance = NO;
    friendManager = [[FriendManager alloc] init];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [friendManager friendCount];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"SimpleTableItem";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];

    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }

    Friend *friend = [[friendManager getFriends] objectAtIndex:indexPath.row];
    cell.textLabel.text = [friend name];
    return cell;
}
@end