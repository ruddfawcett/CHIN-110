//
//  CNTabBarViewController.h
//  CHIN110
//
//  Created by Rudd Fawcett on 4/27/15.
//  Copyright (c) 2015 Rudd Fawcett. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CNAboutViewController;
@class CNRestaurantsTableViewController;
@class CNTransportationTableViewController;
@class CNPlacesToVisitTableViewController;
@class CNCostTableViewController;
@class CNItineraryTableViewController;

@interface CNTabBarViewController : UITabBarController

- (id)initWithType:(int)type;

@property (nonatomic) int type;

@end
