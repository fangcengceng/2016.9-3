//
//  OCViewController.m
//  oc与swift混编
//
//  Created by codygao on 16/9/20.
//  Copyright © 2016年 HM. All rights reserved.
//

#import "OCViewController.h"
#import "oc与swift混编-Swift.h"
@interface OCViewController ()

@end

@implementation OCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    ViewController *vc = [[ViewController alloc] init];
    [vc swiftdemo];
    
}
-(void)ocdemo{
    NSLog(@"我是oc方法");
}

@end
