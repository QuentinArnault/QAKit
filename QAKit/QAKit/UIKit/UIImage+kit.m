//  Copyright (c) 2015 Quentin Arnault. All rights reserved.
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

#import "UIImage+kit.h"

#import "UIScreen+kit.h"

@implementation UIImage (kit)

#pragma mark -
+ (instancetype)QA_imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+ (instancetype)QA_imageForDeviceNamed:(NSString *)imageName{
    UIImage *image = nil;
    NSString *nameWithSuffix = [imageName stringByAppendingString:[UIImage QA_suffixForImage]];
    
    image = [UIImage imageNamed:nameWithSuffix];
    if (!image) {
        image = [UIImage imageNamed:imageName];
    }
    
    return image;
}

#pragma mark -
+ (NSString *)QA_suffixForImage {
    switch ([[UIScreen mainScreen] QA_screenType]) {
        case QAScreenTypeiPhone:
            return @"";
            break;
        case QAScreenTypeiPhoneRetina:
            return @"@2x";
            break;
        case QAScreenTypeiPhone5:
            return @"-568h@2x";
            break;
        case QAScreenTypeiPhone6:
            return @"-667h@2x"; //or some other arbitrary string..
            break;
        case QAScreenTypeiPhone6plus:
            return @"-736h@3x";
            break;
            
        case QAScreenTypeiPad:
            return @"~ipad";
            break;
        case QAScreenTypeiPadRetina:
            return @"~ipad@2x";
            break;
            
        case QAScreenTypeUnknown:
            return @"";
            break;
    }
}
@end
