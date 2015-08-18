//
//  UIImageView+kit.m
//  QAKit
//
//  Created by Quentin Arnault on 18/08/2015.
//  Copyright (c) 2015 Quentin Arnault. All rights reserved.
//

#import "UIImageView+kit.h"

@implementation UIImageView (kit)

#pragma mark -
- (void)setQA_imageRenderingMode:(UIImageRenderingMode)renderMode
{
    NSAssert(self.image, @"Image must be set before setting rendering mode");
    self.image = [self.image imageWithRenderingMode:renderMode];
}

@end
