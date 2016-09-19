//
//  Person.swift
//  项目演练
//
//  Created by codygao on 16/9/18.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class Person: NSObject {

    //姓名可选属性
    var name: String?
    
    //年龄可选属性
    var age: Int = 0
    
    //构造KVC函数
    
    init(dic: [String: Any]){
        super.init()
        setValuesForKeys(dic)
    }
    
    //定义未声明字段
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
   
    
}
