//
//  UIScreen+kit.h
//  QAKit
//
//  Created by Quentin Arnault on 06/09/2015.
//  Copyright (c) 2015 Quentin Arnault. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, QAScreenType) {
    QAScreenTypeUnknown
    , QAScreenTypeiPhone
    , QAScreenTypeiPhoneRetina
    , QAScreenTypeiPhone5
    , QAScreenTypeiPhone6
    , QAScreenTypeiPhone6plus
    , QAScreenTypeiPad
    , QAScreenTypeiPadRetina
};

@interface UIScreen (kit)

- (QAScreenType)QA_screenType;

@end
