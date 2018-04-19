//
//  Person.m
//  Contact
//
//  Created by codygao on 16/9/18.
//  Copyright © 2016年 HM. All rights reserved.
//

#import "Person.h"

#define  Name @"name"
#define  Age @"age"
#define  Tel @"tel"
@implementation Person
//归档
- (void)encodeWithCoder:(NSCoder *)aCoder{
    
    [aCoder encodeObject:self.name forKey:Name];
    [aCoder encodeObject:self.age forKey:Age];
    [aCoder encodeObject:self.tel forKey:Tel];

}
//结档
- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder{
    self.name = [aDecoder decodeObjectForKey:Name];
    self.age = [aDecoder decodeObjectForKey:Age];
    self.tel = [aDecoder decodeObjectForKey:Tel];
    
    
    return self;
}
@end
