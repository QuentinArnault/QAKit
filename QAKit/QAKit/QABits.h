//
//  QABits.h
//  QAKit
//
//  Created by Quentin Arnault on 02/08/2015.
//  Copyright (c) 2015 Quentin Arnault. All rights reserved.
//

#ifndef QAKit_QABits_h
#define QAKit_QABits_h

#define QA_CONTAINS_BIT(bitfield, option)   (((bitfield) & (option)) == (option))
#define QA_FLIP_BIT(bitfield, option)       ((bitfield) ^= (option))
#define QA_SET_BIT(bitfield, option)        ((bitfield) |= (option))

#endif
