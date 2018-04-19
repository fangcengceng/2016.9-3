//
//  ViewController.swift
//  闭包的循环使用
//
//  Created by codygao on 16/9/18.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //定义了一个全局的闭包
    var closure: (()->())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
     //解除循环引用
        closure = {[weak self] in
           //创建子线程
            DispatchQueue.global().async(execute: {
           
              Thread.sleep(forTimeInterval: 2)
                print("mmmmmmmmm")
               print(Thread.current)
                print(self?.view)
            
           })
        }
    }

    deinit {
       print("------")
    }
}

