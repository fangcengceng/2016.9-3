//
//  NetWorkTool.h
//  OC封装网络请求工具类
//
//  Created by codygao on 16/9/20.
//  Copyright © 2016年 HM. All rights reserved.
//


#import "AFNetworking.h"
typedef enum : NSUInteger {
    GET = 0,
    POST = 1
}RequstType;
@interface NetWorkTool : AFHTTPSessionManager
+(instancetype)sharedtool;

//封装网络请求方法
-(void)requesttype:(RequstType)type url:(NSString *)url parameters:(id) parameters callback:(void (^) (id response,NSError *errror))callback;
@end
