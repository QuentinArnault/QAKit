//
//  NSDictionary+kit.h
//  QAKit
//
//  Created by Quentin Arnault on 11/03/2016.
//  Copyright © 2016 Quentin Arnault. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (kit)

- (id _Nonnull)QA_objectForKey:(id _Nonnull)aKey
                   withDefault:(id _Nonnull)defaultValue;

@end
