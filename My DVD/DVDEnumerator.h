//
//  DVDEnumerator.h
//  My DVD
//
//  Created by Andrew Paterson on 12/29/13.
//  Copyright (c) 2013 Andrew Paterson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DVDEnumerator : NSObject
- (NSArray *)enumerateDVDsWithDictionariesInArray:(NSArray *)array;
+ (NSArray *)enumerateDVDsWithDictionariesInArray:(NSArray *)array;
- (NSArray *)denumerateDVDsInArray:(NSArray *)array;
+ (NSArray *)denumerateDVDsInArray:(NSArray *)array;
@end
