//
//  DVDEnumerator.m
//  My DVD
//
//  Created by Andrew Paterson on 12/29/13.
//  Copyright (c) 2013 Andrew Paterson. All rights reserved.
//

#import "DVDEnumerator.h"
#import "DVD.h"
@implementation DVDEnumerator
- (NSArray *)enumerateDVDsWithDictionariesInArray:(NSArray *)array{
    NSMutableArray *returnArray = [[NSMutableArray alloc] init];
    for (NSDictionary *dictionary in array) {
        DVD *dvd = [[DVD alloc] initWithDictionary:dictionary];
        [returnArray addObject:dvd];
    }
    return returnArray;
}
+ (NSArray *)enumerateDVDsWithDictionariesInArray:(NSArray *)array{
    NSMutableArray *returnArray = [[NSMutableArray alloc] init];
    for (NSDictionary *dictionary in array) {
        DVD *dvd = [[DVD alloc] initWithDictionary:dictionary];
        [returnArray addObject:dvd];
    }
    return returnArray;
}
- (NSArray *)denumerateDVDsInArray:(NSArray *)array{
    NSMutableArray *returnArray = [[NSMutableArray alloc] init];
    for (DVD *dvd in array) {
        [returnArray addObject:[dvd decompileDVDIntoDictionary:dvd]];
    }
    return returnArray;
}
+ (NSArray *)denumerateDVDsInArray:(NSArray *)array{
    NSMutableArray *returnArray = [[NSMutableArray alloc] init];
    for (DVD *dvd in array) {
        [returnArray addObject:[dvd decompileDVDIntoDictionary:dvd]];
    }
    return returnArray;
}
@end
