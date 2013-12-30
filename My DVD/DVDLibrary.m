//
//  DVDLibrary.m
//  My DVD
//
//  Created by Andrew Paterson on 12/29/13.
//  Copyright (c) 2013 Andrew Paterson. All rights reserved.
//

#import "DVDLibrary.h"
#import "DVD.h"
@implementation DVDLibrary
- (instancetype)initWithDvds:(NSArray *)dvds{
    self = [super init];
    if (self) {
        self.dvds = dvds;
    }
    return self;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.dvds.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"DVDCell" forIndexPath:indexPath];
    UIImageView *imageView = (UIImageView *)[cell viewWithTag:3];
    imageView.image = [UIImage imageWithContentsOfFile:[[self.dvds objectAtIndex:indexPath.row] coverArtFile]];
    
    
    return cell;
}
@end
