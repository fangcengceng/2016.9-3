//
//  Person.swift
//  9.17计算属性
//
//  Created by codygao on 16/9/18.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class Person: NSObject {
    //计算属性，就是get set 方法
     private var _name: String?
    var name: String? {
        get{
            return _name
        }set{
            _name = newValue
        }
    }
   
    //只读计算属性
    var title: String?{
        get{
            return "我叫\(name ?? "")"
        }
    }

    //只读计算属性的简写
    var title1: String?{
        
        return "我叫\(name)"
    }

    //懒加载，在闭包里，如果不作为函数的参数使用的话，默认是逃逸状态的，需要self指定属性的所有者
    lazy var title2: String = {
        
        return "我也叫\(self.name ?? "")"
    }()


}
