//
//  RegisterViewController.h
//  Chat
//
//  Created by WalterInSH on 12/6/14.
//  Copyright (c) 2014 WalterInSH. All rights reserved.
//

#import "WISViewController.h"

@interface RegisterViewController : WISViewController
@property (weak, nonatomic) IBOutlet UITextField *phoneText;
@property (weak, nonatomic) IBOutlet UITextField *passwordText;
@property (weak, nonatomic) IBOutlet UITextField *confirmPasswordText;


- (IBAction)register:(UIButton *)sender;

@end
