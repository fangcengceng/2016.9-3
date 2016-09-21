//
//  NetworkTool.h
//  oc网络封装工具类
//
//  Created by codygao on 16/9/20.
//  Copyright © 2016年 HM. All rights reserved.
//

#import "AFNetworking.h"
typedef enum : NSUInteger {
    GET,
    POST
} RequsetType;
@interface NetworkTool : AFHTTPSessionManager
//创建一个全局的单例接入口
+(instancetype)sharedtool;

//提供给外界的请求数据的接口
-(void)requestType:(RequsetType)type url:(NSString *)url parameters:(id)parameters callback:(void (^) (id response,NSError *error))callback;
@end
