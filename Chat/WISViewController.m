//
//  WISViewController.m
//  Chat
//
//  Created by WalterInSH on 12/6/14.
//  Copyright (c) 2014 WalterInSH. All rights reserved.
//

#import "WISViewController.h"

@interface WISViewController ()

@end

@implementation WISViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backgroundTap:(id)sender{
    [self.view endEditing:YES];
}
@end
