//
//  SearchPage.h
//  BINGSearch
//
//  Created by Yuriy Pitomets on 8/17/16.
//  Copyright © 2016 Yuriy Pitomets. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "SearchResult.h"


@interface SearchPage : MTLModel

@property (nonatomic, strong) NSURL *URL;
@property (nonatomic, strong) NSArray<SearchResult *> *items;

@end
