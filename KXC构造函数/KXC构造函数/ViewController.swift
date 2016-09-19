//
//  ViewController.swift
//  KXC构造函数
//
//  Created by codygao on 16/9/17.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     //利用KVC创建函数
        let p = Person(dic:["name":"zhangsan","age":10,"num":7,"sex":"男"])
        print(p.name,p.age,p.num)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

