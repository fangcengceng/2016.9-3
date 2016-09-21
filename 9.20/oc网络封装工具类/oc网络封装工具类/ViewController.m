//
//  ViewController.m
//  oc网络封装工具类
//
//  Created by codygao on 16/9/20.
//  Copyright © 2016年 HM. All rights reserved.
//

#import "ViewController.h"
#import "NetworkTool.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    [[NetworkTool sharedtool] requestType:GET url:@"sk/101010100.html" parameters:nil callback:^(NSDictionary* response, NSError *error) {
        if(error == nil && response != nil){
            NSLog(@"%@",response);
        }else{
            NSLog(@"%@",error);
        }
    }];
    
    
}





@end
