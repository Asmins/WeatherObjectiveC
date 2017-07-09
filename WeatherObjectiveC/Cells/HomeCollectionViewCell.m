//
//  HomeCollectionViewCell.m
//  WeatherObjectiveC
//
//  Created by Asmins on 09.07.17.
//  Copyright © 2017 Asmins. All rights reserved.
//

#import "HomeCollectionViewCell.h"

@implementation HomeCollectionViewCell

- (void) setupName: (NSIndexPath* ) indexPath {
    switch (indexPath.row) {
        case 0:
            _nameCityLabel.text = @"Kiev";
            break;
        case 1:
            _nameCityLabel.text = @"Wroclaw";
            break;
        case 2:
            _nameCityLabel.text = @"Las Vegas";
            break;
        case 3:
            _nameCityLabel.text = @"Dnepr";
            break;
        default:
            break;
    }
}

- (void) setupBackgroundColor:(NSIndexPath*) indexPath; {
    _nameCityLabel.textColor = [UIColor whiteColor];
    switch (indexPath.row) {
        case 0:
        _backGroundView.backgroundColor = [UIColor colorWithRed: 233.f / 255 green: 109.f / 255 blue: 111.f / 255 alpha:1];
        break;
        case 1:
            _backGroundView.backgroundColor = [UIColor colorWithRed: 210.f / 255 green: 132.f / 255 blue: 114.f / 255 alpha:1];
            break;
        case 2:
            _backGroundView.backgroundColor = [UIColor colorWithRed: 156.f / 255 green: 192.f / 255 blue: 156.f / 255 alpha:1];
            break;
        case 3:
            _backGroundView.backgroundColor = [UIColor colorWithRed: 77.f / 255 green: 101.f / 255 blue: 201.f / 255 alpha:1];
            break;
        default:
            break;
    }
}


@end
