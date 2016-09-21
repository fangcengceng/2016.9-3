//
//  ViewController.m
//  9.20block相关
//
//  Created by codygao on 16/9/21.
//  Copyright © 2016年 HM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,copy)void (^myblock)();

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self callbackWith:^{
        NSLog(@"定义回调函数");
    }];
  
    //定义block
    
    void (^myblock)() = ^{
        NSLog(@"全局的block到处跑");
    };
    self.myblock = myblock;
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self blockdemo2];
    //调用全局的block
    self.myblock();
}
//当做参数来传递
-(void)blockdemo2{
    void (^task)() = ^{
        NSLog(@"当做参数在传递");
    };
    
}

//定义接收block的方法
-(void)callbackWith:(void (^)())task{
    NSLog(@"%s",__func__);
//    回调task
    task();
}

//简单的定义block

-(void)blockDemo1{
    
    int num = 10;
    void (^block)() = ^{
        NSLog(@"无参无返回值");
    };
    
    block();
    
    
    
    
}
@end
