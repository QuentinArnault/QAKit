//
//  UIColor+kit.h
//
//  Created by Quentin ARNAULT on 30/08/14.
//  Copyright (c) 2014 Quentin Arnault
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of
//  this software and associated documentation files (the "Software"), to deal in
//  the Software without restriction, including without limitation the rights to
//  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//  the Software, and to permit persons to whom the Software is furnished to do so,
//  subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//  FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//  COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//  IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import <UIKit/UIKit.h>

/* waiting colors like
 @"{10,230,445}"
 */
UIColor *QAColorFrom256RGBString (
                                  NSString *string
                                  ) {
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
