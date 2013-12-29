//
//  DVD.h
//  My DVD
//
//  Created by Andrew Paterson on 12/29/13.
//  Copyright (c) 2013 Andrew Paterson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DVD : NSObject
@property (strong, nonatomic)NSString *title;
@property (strong, nonatomic)NSString *year;
@property (weak, nonatomic)UIImage *coverArt;
@property (strong, nonatomic)NSString *coverArtFile;
@property (strong, nonatomic)NSString *description;
@property (strong, nonatomic)NSString *director;
@property (strong, nonatomic)NSArray *cast;
@property (strong, nonatomic)NSString *rating;
@property (strong, nonatomic)NSArray *genres;
@property (strong, nonatomic)NSURL *linkToIMDB;
@property BOOL loanedOut;
@property BOOL loanedTo;
@property (strong, nonatomic)NSDate *returnDate;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end
