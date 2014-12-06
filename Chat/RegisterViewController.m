//
//  RegisterViewController.m
//  Chat
//
//  Created by WalterInSH on 12/6/14.
//  Copyright (c) 2014 WalterInSH. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController


- (IBAction)register:(UIButton *)sender {
    NSString *phone = [_phoneText text];
    NSString *password = [_passwordText text];
    NSString *confirmPassword = [_confirmPasswordText text];
    
    NSLog(@"%@",phone);
    NSLog(@"%@",password);
    NSLog(@"%@",confirmPassword);
}
@end
