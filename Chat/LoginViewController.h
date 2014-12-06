//
//  ViewController.h
//  Chat
//
//  Created by WalterInSH on 11/30/14.
//  Copyright (c) 2014 WalterInSH. All rights reserved.
//

#import "WISViewController.h"

@interface LoginViewController : WISViewController
@property (weak, nonatomic) IBOutlet UITextField *phoneText;
@property (weak, nonatomic) IBOutlet UITextField *passwordText;

- (IBAction)login:(UIButton *)sender;

@end

