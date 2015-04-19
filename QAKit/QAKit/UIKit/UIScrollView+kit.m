//
//  UIScrollView+kit.m
//
//  Created by Quentin ARNAULT on 06/01/13.
//  Copyright (c) 2013 Quentin Arnault
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

#import "UIScrollView+kit.h"

@implementation UIScrollView (kit)

- (void)stackView:(UIView *)view withMargins:(float)margins
{
    view.frame = CGRectMake(self.contentSize.width + margins
                            , view.frame.origin.y
                            , view.frame.size.width
                            , view.frame.size.height);
    
    [self addSubview:view];
    self.contentSize = CGSizeMake(self.contentSize.width + view.frame.size.width + 2*margins
                                  , self.contentSize.height);
}

@end
