//
//  ViewController.swift
//  9.17懒加载
//
//  Created by codygao on 16/9/18.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //懒加载方式一
    var person: Person = Person()
    lazy var p: Person = {()->Person in
        let p1 = Person()
        p1.name = "我是懒加载出来的"
        return p1
    }()
    //懒加载方式二
    lazy var p1: Person = {
        let person = Person()
        person.name = "我也是懒加载出来的"
        return person
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        print(p.name)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print(p1.name)
    }
    

}

