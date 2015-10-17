//
//  CNTabBarViewController.m
//  CHIN110
//
//  Created by Rudd Fawcett on 4/27/15.
//  Copyright (c) 2015 Rudd Fawcett. All rights reserved.
//

#import "CNTabBarViewController.h"

#import "CNAboutViewController.h"
#import "CNRestaurantsTableViewController.h"
#import "CNTransportationTableViewController.h"
#import "CNPlacesToVisitTableViewController.h"
#import "CNCostTableViewController.h"
#import "CNItineraryTableViewController.h"

@interface CNTabBarViewController ()

@end

@implementation CNTabBarViewController

- (id)initWithType:(int)type {
    if (self = [super init]) {
        self.type = type;
        
        [[NSUserDefaults standardUserDefaults] setObject:@(self.type) forKey:@"type"];
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CNAboutViewController *about = [CNAboutViewController new];
    
    UINavigationController *aboutNav = [[UINavigationController alloc] initWithRootViewController:about];
    aboutNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"About", nil) image:[UIImage imageNamed:@"about"] tag:0];
    
    CNTransportationTableViewController *transportation = [[CNTransportationTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    UINavigationController *transportNav = [[UINavigationController alloc] initWithRootViewController:transportation];
    transportNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Transportation", nil) image:[UIImage imageNamed:@"car"] tag:1];

    CNRestaurantsTableViewController *restaurant = [[CNRestaurantsTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    UINavigationController *restaurantNav = [[UINavigationController alloc] initWithRootViewController:restaurant];
    restaurantNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Restaurants", nil) image:[UIImage imageNamed:@"food"] tag:2];
    
    CNPlacesToVisitTableViewController *attractions = [[CNPlacesToVisitTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    UINavigationController *attractionsNav = [[UINavigationController alloc] initWithRootViewController:attractions];
    attractionsNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Attractions", nil) image:[UIImage imageNamed:@"binoculars"] tag:3];
    
    CNCostTableViewController *cost = [[CNCostTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    UINavigationController *costNav = [[UINavigationController alloc] initWithRootViewController:cost];
    costNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Cost", nil) image:[UIImage imageNamed:@"calculator"] tag:4];
    
    CNItineraryTableViewController *itinerary = [[CNItineraryTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    UINavigationController *itineraryNav = [[UINavigationController alloc] initWithRootViewController:itinerary];
    itineraryNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Itinerary", nil) image:[UIImage imageNamed:@"calendar"] tag:5];
    
    [self setViewControllers:@[aboutNav,transportNav,restaurantNav,attractionsNav, itineraryNav]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
