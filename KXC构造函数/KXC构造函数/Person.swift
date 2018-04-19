//
//  Person.swift
//  KXC构造函数
//
//  Created by codygao on 16/9/17.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class Person: NSObject {
  
    //KVC的本质是动态的想对象发送setvlue forkey,这个方法
    
    var name: String?
    var age: Int = 0
    var num: Int = 0
    //KVC构造函数
    init(dic: [String:Any]) {
        super.init()
        //必须先调用super.init(),保证对象创建完成
        setValuesForKeys(dic)

    }
    
    override func setValue(_ value: Any?, forKey key: String) {
      super.setValue(value, forKey: key)
    
    }
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
print("没有key")    }
}
