//
//  HomeCollectionViewCell.h
//  WeatherObjectiveC
//
//  Created by Asmins on 09.07.17.
//  Copyright © 2017 Asmins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIView *backGroundView;
@property (weak, nonatomic) IBOutlet UILabel *nameCityLabel;


- (void) setupName: (NSIndexPath* ) indexPath;
- (void) setupBackgroundColor: (NSIndexPath*) indexPath;


@end
