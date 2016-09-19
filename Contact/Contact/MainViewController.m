//
//  MainViewController.m
//  Contact
//
//  Created by codygao on 16/9/18.
//  Copyright © 2016年 HM. All rights reserved.
//

#import "MainViewController.h"
#import "Person.h"
@interface MainViewController ()<UITableViewDataSource>

@end

@implementation MainViewController
{
    NSMutableArray<Person*> *_personList;
}
- (void)viewDidLoad {
    [super viewDidLoad];
//     [self saveData];
//    _personList =  [self redData];
   
  
    
    
}
//存储数据
-(void)saveData{
    //在子线程中加载数据
  
    
          
           NSString *filepath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).lastObject stringByAppendingPathComponent :@".tex"];
           
           [NSKeyedArchiver archiveRootObject:_personList toFile:filepath];
}
//读取数据

-(NSMutableArray*)redData{
    NSString *filepath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).lastObject stringByAppendingPathComponent :@".tex"];
   NSMutableArray *tempArray = [NSKeyedUnarchiver unarchiveObjectWithFile:filepath];
    return tempArray;
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"maincell" forIndexPath:indexPath];
    cell.textLabel.text = @"nnn";
    return cell;
}


@end
