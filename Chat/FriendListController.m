// Created by WalterInSH on 12/19/14.
// Copyright (c) 2014 WalterInSH. All rights reserved.
//

#import "FriendListController.h"
#import "JSONKit.h"


@implementation FriendListController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *dataJson = @"[{\"userId\":1,\"username\":\"Jim Walker\"},{\"userId\":2,\"username\":\"Tim Cook\"}]";
    NSArray *friendArray = [dataJson objectFromJSONString];
    for (int i = 0; i < [friendArray count]; ++i) {
        NSDictionary *friend = [friendArray objectAtIndex:i];
        NSInteger userId = [friend objectForKey:@"userId"];
        NSString *username = [friend objectForKey:@"username"];
        NSLog(@"%i",userId);
        NSLog(@"%@",username);
    }

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}


@end