//
//  Person.swift
//  day2
//
//  Created by codygao on 16/9/24.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class Person: NSObject {
    var name: String
    var age: Int?

    //重写父类的init 方法
    
    override init() {
        name = "貂蝉"
        super.init()
    }
}
