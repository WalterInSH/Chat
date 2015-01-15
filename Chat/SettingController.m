//
// Created by WalterInSH on 1/11/15.
// Copyright (c) 2015 WalterInSH. All rights reserved.
//

#import "SettingController.h"
#import "UIImageView+AFNetworking.h"

static const NSString *avatarUrl = @"https://avatars3.githubusercontent.com/u/4099427?v=3&u=b284da2e666caadb61c6675d5ccba430bdeae4e6&s=140";


@implementation SettingController

- (void)loadAvatar {
    NSURL * url= [NSURL URLWithString:avatarUrl];

    UIImage *avatarImage = [UIImage imageWithData:[NSData dataWithContentsOfURL:url]];
    _avatar.image = avatarImage;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [self loadAvatar];
}


@end