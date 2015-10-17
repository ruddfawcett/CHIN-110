//
//  NSString+CNExtension.m
//  CHIN110
//
//  Created by Rudd Fawcett on 4/26/15.
//  Copyright (c) 2015 Rudd Fawcett. All rights reserved.
//

@import UIKit;

#import "NSString+CNExtension.h"

@implementation NSString (CNExtension)

+ (NSAttributedString *)stringWithEnglish:(NSString *)english andChinese:(NSString *)chinese {
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@\n%@",english,chinese]];
    
    [string addAttributes:@{NSForegroundColorAttributeName : [UIColor lightGrayColor]} range:NSMakeRange(english.length, chinese.length+1)];
    
    return string;
}

@end
