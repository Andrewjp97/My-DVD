//
//  DVD.m
//  My DVD
//
//  Created by Andrew Paterson on 12/29/13.
//  Copyright (c) 2013 Andrew Paterson. All rights reserved.
//

#import "DVD.h"
/*@property (strong, nonatomic)NSString *title;
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
*/
@implementation DVD
-(instancetype)initWithDictionary:(NSDictionary *)dictionary{
    self = [super init];
    if (self) {
        self.title = [dictionary valueForKey:@"title"];
        self.year = [dictionary valueForKey:@"year"];
        self.coverArt = [UIImage imageWithContentsOfFile:[dictionary objectForKey:@"coverArtFile"]];
        self.coverArtFile = [dictionary objectForKey:@"coverArtFile"];
        self.description = [dictionary objectForKey:@"description"];
        self.director = [dictionary objectForKey:@"director"];
        self.cast = [dictionary objectForKey:@"cast"];
        self.rating = [dictionary objectForKey:@"rating"];
        self.genres = [dictionary objectForKey:@"genres"];
        self.linkToIMDB = [NSURL URLWithString:[dictionary objectForKey:@"stringToIMDB"]];
        if ([dictionary objectForKey:@"loanedOut"] || [dictionary objectForKey:@"loanedTo"]) {
            if ([dictionary objectForKey:@"loanedOut"]) {
                self.loanedOut = YES;
                self.returnDate = [dictionary objectForKey:@"returnDate"];
            }
            else {
                self.loanedTo = YES;
                self.returnDate = [dictionary objectForKey:@"returnDate"];
            }
        }
    }
    return self;
}
@end
