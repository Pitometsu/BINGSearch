//
//  SearchViewModel.h
//  BINGSearch
//
//  Created by Yuriy Pitomets on 8/17/16.
//  Copyright © 2016 Yuriy Pitomets. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ReactiveCocoa/ReactiveCocoa.h>


@interface SearchViewModel : NSObject

@property (nonatomic, copy)   NSString   *query;
@property (nonatomic, assign) BOOL        searchImages;
@property (nonatomic, strong) RACCommand *executeSearch;

@end
