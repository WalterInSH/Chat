//
//  ViewController.m
//  Chat
//
//  Created by WalterInSH on 11/30/14.
//  Copyright (c) 2014 WalterInSH. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (IBAction)login:(UIButton *)sender {
    NSString *phone = [_phoneText text];
    NSString *password = [_passwordText text];
    
    NSLog(@"%@",phone);
    NSLog(@"%@",password);
}

@end
