//
//  Person.swift
//  9.19项目演练一
//
//  Created by codygao on 16/9/19.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class Person: NSObject {

    //定义姓名属性
    var name: String?
    var age: Int = 0
    
    //创建KVC构造函数
    init(dic: [String: Any]) {
        super.init()
        setValuesForKeys(dic)
    }
    
    //防止字段不匹配
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
    
    
    
}
