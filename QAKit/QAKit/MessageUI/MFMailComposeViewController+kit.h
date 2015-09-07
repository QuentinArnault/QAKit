//
//  MFMailComposeViewController+kit.h
//  QAKit
//
//  Created by Quentin Arnault on 08/09/2015.
//  Copyright (c) 2015 Quentin Arnault. All rights reserved.
//

#import <MessageUI/MessageUI.h>

@interface MFMailComposeViewController (kit)

+ (void)presentMailComposerAndNoAccountFallbackFromViewController:(UIViewController *)viewController
                                                      withSubject:(NSString *)subject
                                                        recipient:(NSString *)recipient;

@end
