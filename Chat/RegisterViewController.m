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
    
    if ([phone length] == 0 || [password length] == 0 || [confirmPassword length] == 0) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"注册失败" message:@"信息不完整" delegate:self cancelButtonTitle:@"好" otherButtonTitles:nil];
        [alert show];
        return;
    }
    
    if(![password isEqualToString: confirmPassword]){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"注册失败" message:@"两次密码输入不一致" delegate:self cancelButtonTitle:@"好" otherButtonTitles:nil];
        [alert show];
        [_passwordText setText:@""];
        [_passwordText becomeFirstResponder];
        [_confirmPasswordText setText:@""];
        return;
    }
}
@end
