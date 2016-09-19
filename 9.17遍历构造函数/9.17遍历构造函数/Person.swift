//
//  Person.swift
//  9.17遍历构造函数
//
//  Created by codygao on 16/9/18.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class Person: NSObject {

    //必选属性，姓名
    var name: String?
    //必选属性，年龄
    var age: Int = 0
    //可选属性
    var num: Int = 0
    //dic 重载构造函数
   init(dic: [String:Any]) {
       super.init()
        setValuesForKeys(dic)
    }
    //重写value函数
    override func setValue(_ value: Any?, forKey key: String) {
        super.setValue(value, forKey: key)
    }
    //重写unfinekey函数
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        super.setValue(value, forUndefinedKey: key)
    }
   
    //遍历构造函数:是可失败的函数，有convernience标识符，调用方法，必须是self，本质是调用其他的构造函数
   convenience init?(name:String,age:Int) {
        if age>100||age<0 {
            return nil
        }
        self.init(dic:["name":name,"age":age])
        
    }
    
    
    
    
    
    
    
    
    
}
