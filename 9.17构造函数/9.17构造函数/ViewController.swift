//
//  ViewController.swift
//  9.17构造函数
//
//  Created by codygao on 16/9/17.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //创建Person 对象
      let p = Person()
        print(p.name)
        print(p.age)
        
      //创建Student对象,继承父类的所有属性
        let s = Student()
        print("s.name = \(s.name)")
        print(s.num)
        
    }

  


}

