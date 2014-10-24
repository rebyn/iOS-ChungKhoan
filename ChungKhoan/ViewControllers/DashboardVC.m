//
//  DashboardVC.m
//  ChungKhoan
//
//  Created by Tu Hoang on 10/24/14.
//  Copyright (c) 2014 Tu Hoang. All rights reserved.
//

#import "DashboardVC.h"
#import "StockWithPercentCVC.h"

@interface DashboardVC ()
@property (weak, nonatomic) IBOutlet UICollectionView *stockWithPercent;
@property (weak, nonatomic) IBOutlet UICollectionView *stockWithPercentAndValue;

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UITableView *searchResultsTableView;

@end

@implementation DashboardVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self hookSearchBar];
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 5;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell;

    if (collectionView == self.stockWithPercent) {
        cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"StockWithPercent" forIndexPath:indexPath];
        ((StockWithPercentCVC *)cell).stickerLabel.text = @"VND 0.1%";
    } else {
        cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"StockWithPercentAndValue" forIndexPath:indexPath];
        ((StockWithPercentCVC *)cell).stickerLabel.text = @"VND 0.1%";
    };
    
    return cell;
}

#pragma mark - Hook StickerSearchTVC

- (void)hookSearchBar {
    self.searchController = [[StickerSearchTVC alloc] init];
    
    [self.searchResultsTableView setDelegate:self.searchController];
    [self.searchResultsTableView setDataSource:self.searchController];
    
    UISearchDisplayController *searchDisplayCtrl = [[UISearchDisplayController alloc] initWithSearchBar:self.searchBar contentsController:self.searchController];
    self.searchBar.delegate = self;
    searchDisplayCtrl.delegate = self;
    searchDisplayCtrl.searchResultsDelegate = self.searchController;
    searchDisplayCtrl.searchResultsDataSource = self.searchController;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
