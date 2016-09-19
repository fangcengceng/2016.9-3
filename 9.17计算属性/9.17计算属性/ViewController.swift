//
//  ViewController.swift
//  9.17计算属性
//
//  Created by codygao on 16/9/18.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        let person = Person()
        person.name = "张三"
        print(person.name)
        print(person.title)
        
        print(person.title2)
        person.title2 = "lisi"
        print(person.title2)
 
        
    }

   


}

