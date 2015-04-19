//
//  NSCacheTestCase.m
//  QAKit
//
//  Created by Quentin Arnault on 04/10/2014.
//  Copyright (c) 2014 Quentin Arnault. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "NSCache+kit.h"

@interface NSCacheTestCase : XCTestCase

@end

@implementation NSCacheTestCase

#pragma mark -
- (void)test_should_use_cached_object_if_present_in_cache {
    // ARRANGE
    NSCache *cache = [[NSCache alloc] init];
    
    [cache setObject:@"an object"
              forKey:@"a key"];
    
    // ACT
    NSString *object = [cache objectForKey:@"a key"
                        withComputeHandler:nil];
    
    //ASSERT
    XCTAssertEqualObjects(@"an object"
                          , object
                          , @"should have used cached object");
}

- (void)test_should_use_compute_handler_block_if_object_not_present_in_cache {
    // ARRANGE
    NSCache *cache = [[NSCache alloc] init];
    __block BOOL computeHandlerWasCalled = NO;
    
    // ACT
    [cache objectForKey:@"a key"
     withComputeHandler:^id{
         computeHandlerWasCalled = YES;
         
         return nil;
     }];
    
    //ASSERT
    XCTAssertTrue(computeHandlerWasCalled
                  , @"should have called compute handler");
}


- (void)test_should_ignore_nil_compute_handler_block_result {
    // ARRANGE
    NSCache *cache = [[NSCache alloc] init];
    
    // ACT
    id object = [cache objectForKey:@"a key"
                 withComputeHandler:^id{
                     return nil;
                 }];
    
    //ASSERT
    XCTAssertNil(object
                 , @"should have done nothing with nil as result");
}

@end
