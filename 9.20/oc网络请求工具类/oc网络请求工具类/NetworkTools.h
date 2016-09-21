//
//  NetworkTools.h
//  oc网络请求工具类
//
//  Created by codygao on 16/9/20.
//  Copyright © 2016年 HM. All rights reserved.
//

#import "AFNetworking.h"

typedef enum : NSUInteger {
    GET,
    POST
} RequsetType;
@interface NetworkTools : AFHTTPSessionManager

+(instancetype)sharedtools;
-(void)requestWithType:(RequsetType)type url:(NSString*)url successful:(void (^) (id response))successful failure:(void (^) (NSError *erro))failure;
@end
