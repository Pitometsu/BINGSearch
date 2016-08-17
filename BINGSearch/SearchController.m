//
//  ViewController.m
//  BINGSearch
//
//  Created by Yuriy Pitomets on 8/15/16.
//  Copyright © 2016 Yuriy Pitomets. All rights reserved.
//

#import "SearchController.h"


@interface SearchController () <UISearchResultsUpdating, UISearchBarDelegate>

@property (nonatomic, strong) UISearchController *searchController;

@end


@implementation SearchController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // TODO: use dependency injection here
    self.searchController = ({
        UISearchController *searchController = [UISearchController.alloc initWithSearchResultsController:nil];
        
        searchController.searchResultsUpdater = self;
        
        if ([searchController respondsToSelector:@selector(setDimsBackgroundDuringPresentation:)]) {
            // iOS < 9.1
            [searchController performSelector:@selector(setDimsBackgroundDuringPresentation:)
                                   withObject:@YES];
        } else {
            searchController.obscuresBackgroundDuringPresentation = YES;
        }
        searchController.searchBar.delegate = self;
        [searchController.searchBar sizeToFit];
        searchController;
    });
    self.tableView.tableHeaderView = self.searchController.searchBar;
    self.definesPresentationContext = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UISearchResultsUpdating

- (void)updateSearchResultsForSearchController:(UISearchController *)searchController
{
    // TODO: implement
}

@end
