//
//  Person.swift
//  9.17类似通讯录项目
//
//  Created by codygao on 16/9/18.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class Person: NSObject {

    //  名字
    var name: String?
    //  年龄
    var age: Int = 0
    //  kvc构造函数
    init(dic: [String: Any]) {
        
        //  保证当前对象创建完成
        super.init()
        
        setValuesForKeys(dic)
        
        
    }
    
    //  防止字段不匹配
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
    

    
    
}
