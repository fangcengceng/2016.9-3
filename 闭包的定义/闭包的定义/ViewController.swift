//
//  ViewController.swift
//  闭包的定义
//
//  Created by codygao on 16/9/17.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       demo2()
        
    }
    //有参有返回值
    func demo2(){
        //定义一个有参有返回值的函数
        func sum(num1:Int,num2:Int)->Int{
            return num1 + num2
        }
        //调用函数
       let sumnumber = sum(num1: 10, num2: 19)
        print(sumnumber)
        
        //定义一个有参有返回值的闭包
        let closure = {(num1:Int,num2:Int)->Int in
            let he = num1 + num2
            return he
        }
        
        //执行闭包
       let hehe = closure(10,10)
        print(hehe)
    }
    
    
    
//午餐无返回值函数
    func demo1() -> Void {
       // 定义函数
        func demo1()->Void{
            print("这是一个无参无返回值函数")
        }
        //执行函数
           demo1()
        //定义闭包
        let closure = {()->Void in
            print("这是一个无参无返回值的闭包")
         }
        //执行闭包
         closure()
        let closure1 = {
            print("这是无参无返回值闭包的简写方式")
        }
        closure1()
    
    }


}

