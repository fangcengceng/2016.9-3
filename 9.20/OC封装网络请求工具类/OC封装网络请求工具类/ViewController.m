//
//  ViewController.m
//  OC封装网络请求工具类
//
//  Created by codygao on 16/9/20.
//  Copyright © 2016年 HM. All rights reserved.
//

#import "ViewController.h"
#import "NetWorkTool.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //网路请求接口
    NSString *url = @"http://www.weather.com.cn/data/sk/101010100.html";
    
   [[NetWorkTool sharedtool] requesttype:GET url:url parameters:nil callback:^(id response, NSError *errror) {
   
       if(errror == nil && response != nil){
           NSLog(@"%@", response);
         
           
       }else{
           NSLog(@"网路请求出错%@", errror);
       }
       
       
   }];
    
    
    
    
}



@end
