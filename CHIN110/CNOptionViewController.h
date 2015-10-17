//
//  CNOptionViewController.h
//  CHIN110
//
//  Created by Rudd Fawcett on 4/26/15.
//  Copyright (c) 2015 Rudd Fawcett. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CNTabBarViewController;

@interface CNOptionViewController : UIViewController

@property (strong, nonatomic) NSDictionary *childOptions;

@property (nonatomic) BOOL initial;
@property (nonatomic) BOOL firstClass;
@property (nonatomic) BOOL tourism;

@end
