//
//  ViewController.swift
//  9.16函数
//
//  Created by codygao on 16/9/17.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
   
        let a:Int = demo4()
        print(a)
        let b = demo5(a: 19, b: 20)
        print(b)
        demo6()
    }
   // MARK: 嵌套函数，只能在函数内部调用
    func demo6(){
        func demo7(){
            print("这是一个嵌套函数")
        }
        demo7()
        
    }
    //MARK: 有参有返回值的函数
    func demo5(a:Int,b:Int) -> Int {
        print("有参有返回值函数")
        return a + b
        
    }
    
    //MARK: 无参有返回值的函数
    func demo4() -> Int {
        return 10
    }
    
  //MARK:无参无返回值函数
    func demo1(){
        print("无参无返回值的函数一")
    }
    func demo2()->Void{
        print("无参无返回值的函数二")
    }
    func demo3() -> () {
        print("无参无返回值的函数三")
    }

}

