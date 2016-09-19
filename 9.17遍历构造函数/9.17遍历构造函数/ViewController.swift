//
//  ViewController.swift
//  9.17遍历构造函数
//
//  Created by codygao on 16/9/18.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //KVC构造函数创建对象
        let p = Person(dic: ["name" : "张三","age":10,"num":19])
        print(p.name,p.age,p.num)
       //遍历构造函数创建对象
        let p1 = Person(name: "李林", age: 20)
        let p2 = Person(name: "李四", age: 110)
        print(p1?.name ?? "",p1?.age ?? 0)
        print(p1?.name)//这样写会有option
        print(p2?.name ?? "",p2?.age ?? 0)
        
        
       //创建Student 继承自Person,看是否能继承父类KVC的方法。可以
        let s = Student(dic: ["name" : "学生"])
        print(s.name)
        
        //创建学生类，看能否继承父类的遍历构造方法,可以
        let s1 = Student(name: "学生二", age: 10)
        print(s1?.name,s1?.age)
        
        
        //遍历构造函数不能被重写
        let s3 = Student(sex: "男", name: "学生三", age: 10)
        print(s3?.name,s3?.age,s3?.sex)
        
        
        
    }


}

