//
//  UIColor+kit.m
//  QAKit
//
//  Created by Quentin Arnault on 16/07/2018.
//  Copyright © 2018 Quentin Arnault. All rights reserved.
//

#import "UIColor+kit.h"

@implementation UIColor (kit)


+ (UIColor *)qaColorFrom256RGBString:(NSString *)string {
    UIColor *color = nil;

    NSUInteger openingBracketLocation = [string rangeOfString:@"{"].location;
    NSUInteger endBracketLocation = [string rangeOfString:@"}"].location;
    NSRange componentsRange = NSMakeRange(openingBracketLocation + 1
                                          , endBracketLocation - openingBracketLocation - 1);
    NSString *stringWithoutBrackets = [string substringWithRange:componentsRange];

    NSArray *components = [stringWithoutBrackets componentsSeparatedByString:@","];

    if (components.count >= 3) {
        CGFloat red = [components[0] floatValue] / 256.f;
        CGFloat green = [components[1] floatValue] / 256.f;
        CGFloat blue = [components[2] floatValue] / 256.f;
        CGFloat alpha = 1.f;

        if (components.count == 4) {
            alpha =[components[3] floatValue];
        }

        color = [UIColor colorWithRed:red
                                green:green
                                 blue:blue
                                alpha:alpha];
    }

    return color;
}

@end
