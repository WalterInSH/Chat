//
// Created by WalterInSH on 12/30/14.
// Copyright (c) 2014 WalterInSH. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Configuration : NSObject
+ (NSDictionary *)loadDefaultConfiguration;

+ (NSDictionary *)loadConfiguration:(NSString *)path;
@end