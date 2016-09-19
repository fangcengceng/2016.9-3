//
//  Student.swift
//  9.17 重载构造函数
//
//  Created by codygao on 16/9/17.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class Student: Person {

    
    var no: String
    init(no:String, name: String, age: Int) {
        self.no = no
        super.init(name: name, age: age)
    }
}
