//
//  Student.swift
//  9.17构造函数
//
//  Created by codygao on 16/9/17.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class Student: Person {

    //必选项
    var num: Int
    override init(){
        num = 10
       
        super.init()
        self.name = "学生"
    }
    
}
