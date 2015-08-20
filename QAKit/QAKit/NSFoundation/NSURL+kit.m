//
//  NSURL+kit.m
//  QAKit
//
//  Created by Quentin Arnault on 20/08/2015.
//  Copyright (c) 2015 Quentin Arnault. All rights reserved.
//

#import "NSURL+kit.h"

@implementation NSURL (kit)

#pragma mark -
- (NSDictionary *)QA_parameters {
    NSArray *parameters = [self.query componentsSeparatedByString:@"&"];
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    for (NSString *parameter in parameters) {
        NSArray *comp = [parameter componentsSeparatedByString:@"="];
        if (comp.count == 2) {
            [dict setObject:[comp lastObject]
                     forKey:[comp firstObject]];
        }
    }
    
    return [NSDictionary dictionaryWithDictionary:dict];
}

@end
