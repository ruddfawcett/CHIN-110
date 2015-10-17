//
//  UIView+BZYExtensions.h
//  Busy
//
//  Created by Rudd Fawcett on 3/9/15.
//  Copyright (c) 2015 Rudd Fawcett. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (CNExtensions)

/**
 *  Centers a view (both horizontally and vertically in a superview.
 *
 *  @param view The superview.
 */
- (void)centerInView:(UIView *)view;

/**
 *  Centers a view (horizontally) in a superview.
 *
 *  @param view The superview.
 */
- (void)centerHorizontallyInView:(UIView *)view;

/**
 *  Centers a view (vertically) in a superview.
 *
 *  @param view The superview.
 */
- (void)centerVerticallyInView:(UIView *)view;

/**
 *  Makes the y coordiate 0.
 *
 *  @param view The superview.
 */
- (void)stickToTopOfView:(UIView *)view;

/**
 *  Calculates the x coordinate offset, sticking view to right of view.
 *
 *  @param view The superview.
 */
- (void)stickToRightOfView:(UIView *)view;

/**
 *  Calculates the y coordinate offset, sticking view to bottom of view.
 *
 *  @param view The superview.
 */
- (void)stickToBottomOfView:(UIView *)view;

/**
 *  Makes the x coordinate 0.
 *
 *  @param view The superview.
 */
- (void)stickToLeftOfView:(UIView *)view;

@end