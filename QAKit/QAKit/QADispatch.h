//
//  QADispatch.h
//  QAKit
//
//  Created by Quentin Arnault on 07/08/2015.
//  Copyright (c) 2015 Quentin Arnault. All rights reserved.
//

#ifndef QAKit_QADispatch_h
#define QAKit_QADispatch_h

typedef void(^VoidBlock)(void);

#define QA_DISPATCH_ASYNC_ON_MAIN(voidBlock) dispatch_async(dispatch_get_main_queue(),(voidBlock));

#endif
