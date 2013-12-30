//
//  AppDelegate.h
//  My DVD
//
//  Created by Andrew Paterson on 12/29/13.
//  Copyright (c) 2013 Andrew Paterson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DVDLibrary.h"
#import "DVD.h"
#import "DVDEnumerator.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic)NSArray *dvdArray;
@property (strong, nonatomic)DVDLibrary *library;
@end
