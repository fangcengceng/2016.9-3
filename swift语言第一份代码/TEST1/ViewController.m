//
//  ViewController.m
//  TEST1
//
//  Created by codygao on 16/9/16.
//  Copyright © 2016年 HM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *yellowV = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:yellowV];
    UIButton *bu = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [yellowV addSubview:bu];
    [bu addTarget:self action:@selector(buAction) forControlEvents:UIControlEventTouchUpInside];
}
-(void)buAction{
    NSLog(@"%s",__func__);
}

@end
