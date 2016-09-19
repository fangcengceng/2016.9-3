//
//  ViewController.swift
//  swift字符串
//
//  Created by codygao on 16/9/16.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo2()
        demo1()
        
    }
    //格式字符串
    func demo2() -> Void {
        
        let a = 2016
        let b = 9
        let c = 13
        let reslut = String(format: "%d:%02d:%d", a,b,c)
        print(reslut)
    }
    
    //拼接字符串
    func demo1() -> Void {
        let str1:String = "hello"
        let str2 = "world"
        let year:Int = 2
        //同一种类型的直接拼接
        let result = str1+str2
        print(result)
        //转换常量类型，拼接字符串
        let result1 = result + String(year)
        print((result1))
        //不转换常量类型，拼接字符串，使用\（）
        let month = 3
        let result2 = "\(year)" + "\(month)"
        print(result2);

    }
   

}

