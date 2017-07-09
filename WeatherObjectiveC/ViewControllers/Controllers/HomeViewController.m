//
//  HomeViewController.m
//  WeatherObjectiveC
//
//  Created by Asmins on 09.07.17.
//  Copyright © 2017 Asmins. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeCollectionViewCell.h"
#import "DetailViewController.h"

@interface HomeViewController ()  <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self registerCollectionViewCell];
    // Do any additional setup after loading the view.
}

- (UIStatusBarStyle) preferredStatusBarStyle {
    return UIStatusBarStyleBlackOpaque;
}

- (void) registerCollectionViewCell {
    [self.collectionView registerNib:[UINib nibWithNibName:@"HomeCollectionCell" bundle:nil]
          forCellWithReuseIdentifier:@"homeCollectionViewCell"];
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    HomeCollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"homeCollectionViewCell" forIndexPath:indexPath];
    [cell setupName:indexPath];
    [cell setupBackgroundColor:indexPath];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:@"detailViewController" sender:self];
}

- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 4;
}

- (CGSize) collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    int numberOfCell = 2;
    int spacing = 10;
    return CGSizeMake((collectionView.bounds.size.width - spacing) / numberOfCell,
                      (collectionView.bounds.size.height - spacing) / numberOfCell);

}

@end
