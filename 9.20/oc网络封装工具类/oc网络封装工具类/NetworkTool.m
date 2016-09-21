//
//  NetworkTool.m
//  oc网络封装工具类
//
//  Created by codygao on 16/9/20.
//  Copyright © 2016年 HM. All rights reserved.
//

#import "NetworkTool.h"


@implementation NetworkTool
+(instancetype)sharedtool{
    static NetworkTool *tool;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{

        tool = [[NetworkTool alloc] init];
//        
        NSURL *url = [NSURL URLWithString:@"http://www.weather.com.cn/data/"];
        tool = [[NetworkTool alloc] initWithBaseURL:url];
        
        //增加数据接收类型/sk/101010100.html
        tool.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html", @"text/plain", nil];
    
    });
    return  tool;
}

-(void)requestType:(RequsetType)type url:(NSString *)url parameters:(id)parameters callback:(void (^) (id response,NSError *error))callback{
    if(type == GET){
   
        [self GET:url parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            callback(responseObject,nil);
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            callback(nil, error);
        }];
    }else {
        [self POST:url parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
          
            callback(responseObject,nil);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            callback(nil,error);
        }];
    }
    
    
}


@end
