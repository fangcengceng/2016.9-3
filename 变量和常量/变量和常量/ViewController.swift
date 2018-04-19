//
//  ViewController.swift
//  变量和常量
//
//  Created by codygao on 16/9/16.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       demo()
        demo1()
    }
    //显示转换
    func demo1()  {
        let a:Int = 10
        let b:Double = 10.3
        let c = a + Int(b)
        print(c)
        
    }
    //MARK:pragma mark 定义常量变量
    func demo() -> Void {
        //定义常量
        let a = 10
        
        let b:Int
        b = 20
         let c = a + b
        print(c)
//        a = 30  常量不可以修改
//定义变量
        var str1 = "hello"
        var  str2 = "world"
        str1 += "你好"
        str2 = "世界"
        let result = str1 + str2
        print(result)
        
    //自动推到类型 click +option
        
    }
  

}

