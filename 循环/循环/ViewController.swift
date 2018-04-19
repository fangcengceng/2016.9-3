//
//  ViewController.swift
//  循环
//
//  Created by codygao on 16/9/16.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //3种循环for in ，while ，repeat while
        demo3()
    }
    //repeat while 循环
    func demo3() -> Void {
        var i = 3
        repeat{
            print(i)
            i -= 1
            print("-----")
        } while i > 0
        for _ in 0...3{
            print("究竟会打印几遍呢")
        }
        
        
    }
//    while循环
    func demo2() -> Void{
        var i = 4
        while i>0 {
            print(i)
            i -= 1
        }
        print("----")
        print(i)
    }
    //for in 循环
    func demo1() -> Void {
       //(0,1,20
        for index in 0..<3 {
            print(index)
        }
        print("-------")
        
        //(0,1,2,3)
        for i in 0...3 {
            print(i)
        }
    }

}

