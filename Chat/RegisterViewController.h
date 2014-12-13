//
//  RegisterViewController.h
//  Chat
//
//  Created by WalterInSH on 12/6/14.
//  Copyright (c) 2014 WalterInSH. All rights reserved.
//

#import "WISViewController.h"
#import "MHTextField.h"

@interface RegisterViewController : WISViewController
@property (weak, nonatomic) IBOutlet MHTextField *phoneText;
@property (weak, nonatomic) IBOutlet MHTextField *passwordText;
@property (weak, nonatomic) IBOutlet MHTextField *confirmPasswordText;


- (IBAction)register:(UIButton *)sender;

@end
