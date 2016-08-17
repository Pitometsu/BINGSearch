//
//  BINGSession.h
//  BINGSearch
//
//  Created by Yuriy Pitomets on 8/17/16.
//  Copyright © 2016 Yuriy Pitomets. All rights reserved.
//

@import OvercoatReactiveCocoa;


@interface BINGSession : OVCHTTPSessionManager

- (RACSignal *)searchWeb:(NSString *)query;
- (RACSignal *)searchImages:(NSString *)query;

@end
