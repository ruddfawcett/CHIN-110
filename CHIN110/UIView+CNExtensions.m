//
//  UIView+BZYExtensions.m
//  Busy
//
//  Created by Rudd Fawcett on 3/9/15.
//  Copyright (c) 2015 Rudd Fawcett. All rights reserved.
//

#import "UIView+CNExtensions.h"

@implementation UIView (CNExtensions)

- (void)centerInView:(UIView *)view {
    [self centerHorizontallyInView:view];
    [self centerVerticallyInView:view];
}

- (void)centerHorizontallyInView:(UIView *)view {
    CGFloat xOffset = (view.frame.size.width - self.frame.size.width) / 2;
    CGFloat yOffset = self.frame.origin.y;
    
    CGFloat width = CGRectGetWidth(self.frame);
    CGFloat height = CGRectGetHeight(self.frame);
    
    self.frame = CGRectMake(xOffset, yOffset, width, height);
}

- (void)centerVerticallyInView:(UIView *)view {
    CGFloat xOffset = self.frame.origin.x;
    
    CGFloat yOffset = (view.frame.size.height - self.frame.size.height) / 2;
    
    CGFloat width = CGRectGetWidth(self.frame);
    CGFloat height = CGRectGetHeight(self.frame);
    
    self.frame = CGRectMake(xOffset, yOffset, width, height);
}

- (void)stickToTopOfView:(UIView *)view {
    CGRect frame = self.frame;
    CGFloat yOffset = 0;
    
    frame.origin.y = yOffset;
    
    self.frame = frame;
}

- (void)stickToRightOfView:(UIView *)view {
    CGRect frame = self.frame;
    CGFloat xOffset = view.frame.size.width - self.frame.size.width;
    
    frame.origin.x = xOffset;
    
    self.frame = frame;
}

- (void)stickToBottomOfView:(UIView *)view {
    CGRect frame = self.frame;
    CGFloat yOffset = view.frame.size.height - self.frame.size.height;
    
    frame.origin.y = yOffset;
    
    self.frame = frame;
}

- (void)stickToLeftOfView:(UIView *)view {
    CGRect frame = self.frame;
    CGFloat xOffset = 0;
    
    frame.origin.x = xOffset;
    
    self.frame = frame;
}

@end