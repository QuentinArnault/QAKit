//
//  UIScreen+kit.m
//  QAKit
//
//  Created by Quentin Arnault on 06/09/2015.
//  Copyright (c) 2015 Quentin Arnault. All rights reserved.
//

#import "UIScreen+kit.h"

static CGFloat const kiPhone6PlusTypeHeight = 736.f;

@implementation UIScreen (kit)

#pragma mark -
#pragma mark properties
- (BOOL)QA_isIPhone6PlusType {
    return (kiPhone6PlusTypeHeight == self.bounds.size.height);
}

@end
