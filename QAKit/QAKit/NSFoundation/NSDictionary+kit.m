//
//  NSDictionary+kit.m
//  QAKit
//
//  Created by Quentin Arnault on 11/03/2016.
//  Copyright © 2016 Quentin Arnault. All rights reserved.
//

#import "NSDictionary+kit.h"

@implementation NSDictionary (kit)

#pragma mark -
- (id _Nonnull)QA_objectForKey:(id _Nonnull)aKey
                   withDefault:(id _Nonnull)defaultValue {
    id object = [self objectForKey:aKey];
    
    return object?object:defaultValue;
}

@end
