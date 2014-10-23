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
@end

@implementation DashboardVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 5;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (StockWithPercentCVC *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    StockWithPercentCVC *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"StockWithPercent" forIndexPath:indexPath];
    
    return cell;
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
