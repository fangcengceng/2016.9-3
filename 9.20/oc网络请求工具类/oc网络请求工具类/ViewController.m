//
//  ViewController.m
//  oc网络请求工具类
//
//  Created by codygao on 16/9/20.
//  Copyright © 2016年 HM. All rights reserved.
//

#import "ViewController.h"
#import "NetworkTools.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *url =  @"http://www.weather.com.cn/data/sk/101010100.html";
    [[NetworkTools sharedtools] requestWithType:GET url:url successful:^(id response) {
        
       
        NSLog(@"%@",response);
       
    } failure:^(NSError *erro) {
       
        NSLog(@"%@",erro);
    }];
    
    
    
}




@end
