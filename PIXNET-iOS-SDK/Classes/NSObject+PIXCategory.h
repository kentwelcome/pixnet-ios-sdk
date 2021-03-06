//
//  NSObject+PIXCategory.h
//  PIXNET-iOS-SDK
//
//  Created by Dolphin Su on 4/10/14.
//  Copyright (c) 2014 Dolphin Su. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PIXAPIHandler.h"

@interface NSObject (PIXCategory)
-(void)succeedHandleWithData:(id)data completion:(PIXHandlerCompletion)completion;
@end
