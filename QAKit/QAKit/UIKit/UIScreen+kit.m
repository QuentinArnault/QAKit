//
//  UIScreen+kit.m
//  QAKit
//
//  Created by Quentin Arnault on 06/09/2015.
//  Copyright (c) 2015 Quentin Arnault. All rights reserved.
//

#import "UIScreen+kit.h"

@implementation UIScreen (kit)

#pragma mark -
#pragma mark properties

- (QAScreenType)QA_screenType {
    QAScreenType screenType = QAScreenTypeUnknown;
    
    CGFloat height = (CGFloat) fmaxf((float)self.bounds.size.height
                                     , ((float)self.bounds.size.width));
    
    switch ((NSInteger)height) {
        case 480:
            screenType = (( self.scale > 1.0) ? QAScreenTypeiPhoneRetina : QAScreenTypeiPhone );
            break;
        case 568:
            screenType = QAScreenTypeiPhone5;
            break;
        case 667:
            screenType = QAScreenTypeiPhone6;
            break;
        case 736:
            screenType = QAScreenTypeiPhone6plus;
            break;
        case 1024:
            screenType = (( self.scale > 1.0) ? QAScreenTypeiPadRetina : QAScreenTypeiPad );
            break;
        default:
            screenType =  QAScreenTypeUnknown;
            break;
    }
    
    return screenType;
}

@end
