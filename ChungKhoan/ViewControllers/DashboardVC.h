//
//  DashboardVC.h
//  ChungKhoan
//
//  Created by Tu Hoang on 10/24/14.
//  Copyright (c) 2014 Tu Hoang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StickerSearchTVC.h"

@interface DashboardVC : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate, UISearchBarDelegate, UISearchDisplayDelegate>

@property (strong, nonatomic) StickerSearchTVC *searchController;

@end
