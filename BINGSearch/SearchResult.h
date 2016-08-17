//
//  SearchItem.h
//  BINGSearch
//
//  Created by Yuriy Pitomets on 8/17/16.
//  Copyright © 2016 Yuriy Pitomets. All rights reserved.
//

#import <Mantle/Mantle.h>
#import <UIKit/UIKit.h>


@interface SearchResult : MTLModel

@property (nonatomic, strong) NSURL    *URL;
@property (nonatomic, copy)   NSString *title;
@property (nonatomic, copy)   NSString *subtitle;
@property (nonatomic, strong) UIImage  *image;

@end
