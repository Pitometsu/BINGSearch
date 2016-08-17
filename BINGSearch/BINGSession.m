//
//  BINGSession.m
//  BINGSearch
//
//  Created by Yuriy Pitomets on 8/17/16.
//  Copyright © 2016 Yuriy Pitomets. All rights reserved.
//

#import "BINGSession.h"
#import "SearchPage.h"


static NSString *const kBINGBasePath   = @"https://www.bing.com/";
static NSString *const kBINGRequestWeb = @"search?q=%@";
static NSString *const kBINGRequestImg = @"images/search?q=%@";


@implementation BINGSession

- (instancetype)init
{
    self = [super initWithBaseURL:[NSURL URLWithString:kBINGBasePath]];

    return self;
}

+ (NSDictionary<NSString *, Class> *)modelClassesByResourcePath
{
    return @{
             kBINGRequestWeb : [SearchPage class],
             kBINGRequestImg : [SearchPage class]
             };
}

#pragma mark - public

- (RACSignal *)searchWeb:(NSString *)query
{
    return [self rac_GET:kBINGRequestWeb
              parameters:nil];
}

- (RACSignal *)searchImages:(NSString *)query
{
    return [self rac_GET:kBINGRequestImg
              parameters:nil];
}

@end
