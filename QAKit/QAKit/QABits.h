//
//  QABits.h
//  QAKit
//
//  Created by Quentin Arnault on 02/08/2015.
//  Copyright (c) 2015 Quentin Arnault. All rights reserved.
//

#ifndef QAKit_QABits_h
#define QAKit_QABits_h

#define QA_BIT_CONTAINS(bitfield, option)   (((bitfield) & (option)) == (option))
#define QA_BIT_FLIP(bitfield, option)       ((bitfield) ^= (option))
#define QA_BIT_SET(bitfield, option)        ((bitfield) |= (option))

#endif
