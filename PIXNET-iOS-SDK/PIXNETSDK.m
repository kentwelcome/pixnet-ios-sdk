//
//  PIXNETSDK.m
//  PIXNET-iOS-SDK
//
//  Created by Cloud Sung on 2014/3/13.
//  Copyright (c) 2014年 PIXNET. All rights reserved.
//
static const NSString *kConsumerKey;
static const NSString *kConsumerSecrect;

#import "PIXNETSDK.h"
#import "PIXBlog.h"

@implementation PIXNETSDK
+(void)setConsumerKey:(NSString *)aKey consumerSecrect:(NSString *)aSecrect{
    kConsumerKey = [aKey copy];
    kConsumerSecrect = [aSecrect copy];
}

+(instancetype)sharedInstance{
    if (kConsumerKey == nil || kConsumerSecrect == nil) {
        NSLog(@"您尚未設定 consumer key 或 consumer secrect");
        return nil;
    }
    static PIXNETSDK *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[PIXNETSDK alloc] init];
    });
    return sharedInstance;
}
- (void)getBlogInformationWithUserID:(NSString *)userID completion:(RequestCompletion)completion{
    [[PIXBlog sharedInstance] getBlogInformationWithUserID:userID completion:completion];
}
@end