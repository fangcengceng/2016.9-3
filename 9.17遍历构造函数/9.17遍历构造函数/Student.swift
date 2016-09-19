//
//  Student.swift
//  9.17遍历构造函数
//
//  Created by codygao on 16/9/18.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class Student: Person {

    var sex: String?
    //  使用父类的构造函数的前提,是子类里面不提供构造函数
    //  原因 ,子类提供构造函数系统会认为要对其进行必须属性的初始化, 所以在swift 只能通过子类的构造完成后在调用其父类的构造函数
    convenience init?(sex:String,name:String,age:Int){
        self.init(name:name,age:age)
        self.sex = sex
    }
    //子类的遍历构造函数不能跟其他构造函数一块，
//    init(sex: String) {
//                self.sex = sex
//                super.init(dic: ["name": "杨钰莹"])
//            }
   
}
