//
//  Person.swift
//  9.17构造函数
//
//  Created by codygao on 16/9/17.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class Person: NSObject {
    //定义名字，必选项,对象创建后一定有值，要么创建的时候有值，要么创建构造函数的时候给赋值
    var name: String
    //定义年龄，可选项
    var age: String?
  //重写父类的构造函数
    override init() {
       name = "xiaoming"
        super.init()
    }
    
}
