//
//  Person.swift
//  9.19项目演练
//
//  Created by codygao on 16/9/19.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class Person: NSObject {

    var name: String?
    var age: Int = 0
    
    //创建dic构造函数
    init(dic:[String: Any]) {
        super.init()
        setValuesForKeys(dic)
    }
    
    //防止字段不匹配
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        print(key,"不匹配")
    }
    
    
    
}
