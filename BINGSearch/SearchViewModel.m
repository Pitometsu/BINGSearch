//
//  SearchViewModel.m
//  BINGSearch
//
//  Created by Yuriy Pitomets on 8/17/16.
//  Copyright © 2016 Yuriy Pitomets. All rights reserved.
//

#import "SearchViewModel.h"
#import "BINGSession.h"


@interface SearchViewModel ()

@property (nonatomic, strong) BINGSession *session;

@end


@implementation SearchViewModel

- (instancetype)init
{
    self = [super init];

    if (self) {
        self.session = BINGSession.new;
        self.searchImages = NO;
        self.executeSearch = [RACCommand.alloc initWithSignalBlock:^RACSignal *(id input) {
            NSString *query = [self.query stringByAddingPercentEncodingWithAllowedCharacters:
                               [NSCharacterSet URLHostAllowedCharacterSet]];

            return self.searchImages
            ? [self.session searchImages:query]
            : [self.session searchWeb:query];
        }];
    }
    return self;
}

@end
