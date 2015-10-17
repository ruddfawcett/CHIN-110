//
//  CNOptionViewController.m
//  CHIN110
//
//  Created by Rudd Fawcett on 4/26/15.
//  Copyright (c) 2015 Rudd Fawcett. All rights reserved.
//

#import "CNOptionViewController.h"

#import "CNTabBarViewController.h"

#import "NSString+CNExtension.h"

@interface CNOptionViewController ()

@property (strong, nonatomic) UILabel *leftOptionView;
@property (strong, nonatomic) UILabel *rightOptionView;

@end

@implementation CNOptionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    self.view.backgroundColor = UIColor.whiteColor;
    
    CGFloat width = self.view.bounds.size.width/2;
    CGFloat height = self.view.bounds.size.height;
    
    self.leftOptionView = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, width, height)];
    self.leftOptionView.numberOfLines = 0;
    self.leftOptionView.textAlignment = NSTextAlignmentCenter;
    self.leftOptionView.font = [UIFont systemFontOfSize:20];
    self.leftOptionView.userInteractionEnabled = YES;

    UITapGestureRecognizer *left = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(leftTapped)];
    
    [self.leftOptionView addGestureRecognizer:left];
    
    self.rightOptionView = [[UILabel alloc] initWithFrame:CGRectMake(width, 0, width, height)];
    self.rightOptionView.numberOfLines = 0;
    self.rightOptionView.textAlignment = NSTextAlignmentCenter;
    self.rightOptionView.font = [UIFont systemFontOfSize:20];
    self.rightOptionView.userInteractionEnabled = YES;
    
    UITapGestureRecognizer *right = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(rightTapped)];
    
    [self.rightOptionView addGestureRecognizer:right];
    
    [self.view addSubview:self.leftOptionView];
    [self.view addSubview:self.rightOptionView];
    
    if (self.initial) {
        self.leftOptionView.attributedText = [NSString stringWithEnglish:NSLocalizedString(@"Not a ton", nil) andChinese:NSLocalizedString(@"coach", nil)];
        self.rightOptionView.attributedText = [NSString stringWithEnglish:NSLocalizedString(@"A fair amount", nil) andChinese:NSLocalizedString(@"first", nil)];
    }
    else {
        self.leftOptionView.attributedText = [NSString stringWithEnglish:NSLocalizedString(@"Yes education", nil) andChinese:NSLocalizedString(@"culture", nil)];
        self.rightOptionView.attributedText = [NSString stringWithEnglish:NSLocalizedString(@"No tourism", nil) andChinese:NSLocalizedString(@"relax", nil)];
    }
}

- (void)leftTapped {
    if (self.initial) {
        self.firstClass = NO;
        
        [self pushSecond];
        return;
    }
    
    self.tourism = NO;
    [self pushThird];
    return;
}

- (void)rightTapped {
    if (self.initial) {
        self.firstClass = YES;
        [self pushSecond];
        
        return;
    }
    
    self.tourism = YES;
    [self pushThird];
    return;
}

- (void)pushSecond {
    CNOptionViewController *myself = [[CNOptionViewController alloc] init];
    myself.title = NSLocalizedString(@"Education?", nil);
    
    myself.firstClass = self.firstClass;
    
    [[self navigationController] pushViewController:myself animated:YES];
}

- (int)type {
    
    if (self.tourism && self.firstClass) {
        return 4;
    }
    else if (self.tourism && !self.firstClass) {
        return 3;
    }
    else if (!self.tourism && self.firstClass) {
        return 2;
    }
    else {
        return 1;
    }
    
}

- (void)pushThird {
    CNTabBarViewController *tabBarController = [[CNTabBarViewController alloc] initWithType:[self type]];
    
    [self presentViewController:tabBarController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
