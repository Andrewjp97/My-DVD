//
//  DVDLibrary.h
//  My DVD
//
//  Created by Andrew Paterson on 12/29/13.
//  Copyright (c) 2013 Andrew Paterson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DVDLibrary : NSObject <UICollectionViewDataSource>
- (instancetype)initWithDvds:(NSArray *)dvds;
@property (strong, nonatomic)NSArray *dvds;
@end
