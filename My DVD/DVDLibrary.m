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
@end
