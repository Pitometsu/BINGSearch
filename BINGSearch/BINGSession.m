//
//  BINGSession.m
//  BINGSearch
//
//  Created by Yuriy Pitomets on 8/17/16.
//  Copyright © 2016 Yuriy Pitomets. All rights reserved.
//

#import "BINGSession.h"
#import "SearchPage.h"


static NSString *const kBINGRequestWeb = @"https://www.bing.com/search?q=%@";
static NSString *const kBINGRequestImg = @"https://www.bing.com/images/search?q=%@";


@implementation BINGSession

+ (NSDictionary<NSString *, Class> *)modelClassesByResourcePath
{
    return @{
             kBINGRequestWeb : [SearchPage class],
             kBINGRequestImg : [SearchPage class]
             };
}

@end
