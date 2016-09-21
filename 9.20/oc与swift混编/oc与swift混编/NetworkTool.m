//
//  NetworkTool.m
//  oc与swift混编
//
//  Created by codygao on 16/9/20.
//  Copyright © 2016年 HM. All rights reserved.
//

#import "NetworkTool.h"

@implementation NetworkTool
+(instancetype)sharedtool{
    static NetworkTool *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[NetworkTool alloc] init];
    });
    
    return instance;
    
}
@end
