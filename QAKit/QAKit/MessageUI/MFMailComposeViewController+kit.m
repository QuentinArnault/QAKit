//
//  MFMailComposeViewController+kit.m
//  QAKit
//
//  Created by Quentin Arnault on 08/09/2015.
//  Copyright (c) 2015 Quentin Arnault. All rights reserved.
//

#import "NSString+kit.h"

#import "MFMailComposeViewController+kit.h"

@interface MFMailComposeViewController () <MFMailComposeViewControllerDelegate>

@end

@implementation MFMailComposeViewController (kit)

#pragma mark -
+ (void)presentMailComposerAndNoAccountFallbackFromViewController:(UIViewController *)viewController
                                                      withSubject:(NSString *)subject
                                                        recipient:(NSString *)recipient {
    if ([MFMailComposeViewController canSendMail]) {
        MFMailComposeViewController *sendViewController = [[MFMailComposeViewController alloc] init];
        sendViewController.mailComposeDelegate = sendViewController;
        [sendViewController setToRecipients:@[recipient]];
        sendViewController.subject = subject;
        
        [viewController presentViewController:sendViewController
                                     animated:YES completion:^{
                                     }];
    } else {
        NSString *stringForUrl = [NSString stringWithFormat:@"mailto:%@?subject=%@"
                                  , recipient
                                  , subject];
        NSString *encodedStringForUrl = [stringForUrl QA_urlEncodeUsingEncoding:NSUTF8StringEncoding];
        
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:encodedStringForUrl]];
    }
    
}


#pragma mark -
#pragma mark MFMailComposeViewControllerDelegate
- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
    UIViewController *presentingViewController = controller.presentingViewController;
    
    [presentingViewController dismissViewControllerAnimated:YES
                                                 completion:nil];
}

@end
