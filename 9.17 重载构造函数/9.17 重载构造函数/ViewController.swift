//
//  ViewController.swift
//  9.17 重载构造函数
//
//  Created by codygao on 16/9/17.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      //创建Person 的对象
        let p = Person(name:"zhangsan",age:19)
        p.sex  = "男"
        print(p.name,p.age,p.sex)
        print(p)
        print("-----")
        //创建学生对象，继承自Person
        let s = Student(no:"2",name: "学生", age: 10)
        print(s.age)
        
    }
}

