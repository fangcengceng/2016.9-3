//
//  ViewController.swift
//  可选类型
//
//  Created by codygao on 16/9/17.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       demo()
    }
    func demo(){
        let a: Int? = nil
        let b: Int? = nil
        var c: String? = nil
        //解包
        if a != nil,b != nil{
            let result = a!+b!
            print(result)
        }
        let reslut = (a ?? 0) + (b ?? 0)
        print("===\(reslut)")
        c = "这是可选类型"
        print(c)
        
        
    }


}

