//
// Created by WalterInSH on 12/30/14.
// Copyright (c) 2014 WalterInSH. All rights reserved.
//

#import "Configuration.h"

NSString *const defaultConfigurationFileName = @"app";

@implementation Configuration

+(NSDictionary *)loadDefaultConfiguration{
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSString *plistName = [bundle objectForInfoDictionaryKey:defaultConfigurationFileName];
    NSString *plistPath = [bundle pathForResource:plistName ofType:@"plist"];
    return [NSDictionary dictionaryWithContentsOfFile:plistPath];
}

+(NSDictionary *)loadConfiguration:(NSString *) path {
    if (path.length == 0) {
        return nil;
    }
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSString *plistName = [bundle objectForInfoDictionaryKey:path];
    NSString *plistPath = [bundle pathForResource:plistName ofType:@"plist"];
    return [NSDictionary dictionaryWithContentsOfFile:plistPath];
}
@end