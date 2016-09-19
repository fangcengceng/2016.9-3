//
//  Person.swift
//  9.17 重载构造函数
//
//  Created by codygao on 16/9/17.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class Person: NSObject {
    //必选属性,要求在创建的时候必须有值
    var name: String
    //必选属性，要求在创建的时候必须有值
    var age: Int
    //可选属性，可以在创建发的时候没有值
    var sex: String?
    //重载构造函数，就是重新init方法，可以保证在对象创建的时候就有值
    init(name:String,age:Int) {
        self.name = name
        self.age = age
        super.init()
    }
    
}
