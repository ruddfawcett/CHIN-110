//
//  CNWelcomeViewController.m
//  CHIN110
//
//  Created by Rudd Fawcett on 4/26/15.
//  Copyright (c) 2015 Rudd Fawcett. All rights reserved.
//

#import "CNWelcomeViewController.h"

#import "CNOptionViewController.h"

#import "NSString+CNExtension.h"

@interface CNWelcomeViewController ()

@end

@implementation CNWelcomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.title = NSLocalizedString(@"Welcome", nil);
    
    CGFloat x = self.view.bounds.size.width - 500;
    
    UILabel *welcome = [[UILabel alloc] initWithFrame:CGRectMake(x, 0, 500, 200)];
    welcome.numberOfLines = 0;
    welcome.textAlignment = NSTextAlignmentCenter;
    welcome.font = [UIFont systemFontOfSize:20];
    welcome.text = NSLocalizedString(@"Intro", nil);
    
    [welcome centerInView:self.view];
    
    [self.view addSubview:welcome];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap)];
    
    [self.view addGestureRecognizer:tap];
}

- (void)tap {
    CNOptionViewController *options = [[CNOptionViewController alloc] init];
    options.initial = true;
    options.title = NSLocalizedString(@"Cost?", nil);
    
    [[self navigationController] pushViewController:options animated:YES];
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
