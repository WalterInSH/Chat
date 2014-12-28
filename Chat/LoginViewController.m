//
//  ViewController.m
//  Chat
//
//  Created by WalterInSH on 11/30/14.
//  Copyright (c) 2014 WalterInSH. All rights reserved.
//

#import "LoginViewController.h"
#import "FriendListController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (IBAction)login:(UIButton *)sender {
    NSString *phone = [_phoneText text];
    NSString *password = [_passwordText text];

    if ([phone length] == 0 || [password length] == 0) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"登陆失败" message:@"信息不完整" delegate:self cancelButtonTitle:@"好" otherButtonTitles:nil];
        [alert show];
        return;
    }


    //TODO login

    //Skip to friend list
    FriendListController *flc = (FriendListController *)[self.storyboard instantiateViewControllerWithIdentifier:@"mainTabBarController"];
    flc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:flc animated:YES completion:nil];
}

@end
