//
//  ViewController.swift
//  option可选项
//
//  Created by codygao on 16/9/16.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    demo()
        
    }
    //option可选项，不直接参与计算，要想计算必须解包
    //想可选类型为nil的解包会崩溃
    func demo() -> Void {
      //常量可选项
        let a: Int? = 10
        let b = 20
        let result = a! + b
        print(result)
        let c: Int? = 10
        if c != nil {
            let result1 = c! + b
            print("------")
            print(result1)
            print("------")
        }
        //使用空运算符。如果可选项有值，就使用，没有值就使用复制后的值
        let d: Int? = nil
        let result2 = (d ?? 3) + b
        print(result2)
        
        //只有可选项才能赋值为nil
        let str:(String)
        str = ""
        print(str)//不可以str = nil
        print("------")
        //可选项可以赋值为nil
        let str2:String?
        str2 = nil
        print(str2)
        print("_____")
    }
   

}

