//
//  QANavigationViewController.m
//  QAKit
//
//  Created by Quentin Arnault on 03/10/2014.
//  Copyright (c) 2014 Quentin Arnault. All rights reserved.
//

#import "QANavigationViewController.h"

@interface QANavigationViewController ()

@end

@implementation QANavigationViewController

#pragma mark -
- (NSUInteger)supportedInterfaceOrientations {
    NSUInteger supportedInterfaceOrientations;
    
    if (self.topViewController) {
        supportedInterfaceOrientations = self.topViewController.supportedInterfaceOrientations;
    } else {
        supportedInterfaceOrientations = [super supportedInterfaceOrientations];
    }
    
    return supportedInterfaceOrientations;
}

@end
