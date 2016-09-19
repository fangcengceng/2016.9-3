//
//  Person.h
//  Contact
//
//  Created by codygao on 16/9/18.
//  Copyright © 2016年 HM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject<NSCoding>
@property(nonatomic,copy) NSString *name;
@property(nonatomic,copy) NSString *age;
@property(nonatomic,copy) NSString *tel;

@end
