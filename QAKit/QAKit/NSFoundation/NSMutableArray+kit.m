//
//  NSMutableArray+kit.m
//  QAKit
//
//  Created by Quentin Arnault on 11/08/2015.
//  Copyright (c) 2015 Quentin Arnault. All rights reserved.
//

#import "NSMutableArray+kit.h"

@implementation NSMutableArray (kit)

#pragma mark -
- (void)QA_safeAddObject:(id)anObject {
    if (anObject) {
        [self addObject:anObject];
    }
}

@end
