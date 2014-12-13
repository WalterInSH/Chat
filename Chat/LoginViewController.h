//
//  ViewController.h
//  Chat
//
//  Created by WalterInSH on 11/30/14.
//  Copyright (c) 2014 WalterInSH. All rights reserved.
//

#import "WISViewController.h"
#import "MHTextField.h"

@interface LoginViewController : WISViewController
@property (weak, nonatomic) IBOutlet MHTextField *phoneText;
@property (weak, nonatomic) IBOutlet MHTextField *passwordText;

- (IBAction)login:(UIButton *)sender;

@end

