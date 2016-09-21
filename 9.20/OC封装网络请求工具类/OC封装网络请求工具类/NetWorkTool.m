//
//  NetWorkTool.m
//  OC封装网络请求工具类
//
//  Created by codygao on 16/9/20.
//  Copyright © 2016年 HM. All rights reserved.
//


#import "NetWorkTool.h"


@implementation NetWorkTool
//创建全局单例接入点
+(instancetype)sharedtool{
    
    static NetWorkTool *tool;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        tool = [[self alloc] init];
        tool.responseSerializer.acceptableContentTypes = [tool.responseSerializer.acceptableContentTypes setByAddingObject:@"text/html"];
        
        
    });
    return  tool;
}


-(void)requesttype:(RequstType)type url:(NSString *)url parameters:(id) parameters callback:(void (^) (id response,NSError *errror))callback{
    
    if (type == GET){
    //封装GET类
        [self GET:url parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            callback(responseObject, nil);
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            callback(nil, error);
        }];
        
    }else{
    //封装Post类
    
        [self POST:url parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            callback(responseObject,nil);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            callback(nil,error);
        }];
        
    }
    
    
}
@end
