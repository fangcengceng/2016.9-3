//
//  ViewController.swift
//  控制流
//
//  Created by codygao on 16/9/16.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       demo6()
    }
    func demo6() -> Void {
       let score = "一般"
        switch score {
        case "优秀":
            print(score)
        case "一般","良好":
            print(score)
              fallthrough
        case "及格":
            print("这是穿透后的语句，后面语句不能有变量")
          
        case "中":
            print("")
        case "差":
            print(score)
        default:
            print("结束")
        }
        
        let score1 = 90
        switch score1 {
        case _ where score1 >= 90:
            break
        case _ where score1 >= 80:
            print("良好")
        case _ where score1 >= 70:
            print("一般")
            
        default:
            print("未知")
        }
        
        
        
    }
    //增加判断类型
    func demo5() -> Void {
        let str: URL? = URL(string: "http://www.baidu.com")
        if let u = str , u.host == "www.baidu.com"{
            print("这是增加条件判断")
        }
        
        
    }
    //增加条件判断
    func  demo4() {
        
        let str: String? = nil
        let age: Int? = 20
        guard let name = str,let age2 = age else{
           print("name 为空")
            return
        }
        print(name)
        print(age2)
    }
    
    
    
    //可选类型guard let 判断
    func demo3(){
        let url: URL? = URL(string: "http://www.baidu.com")
        if let u = url{let num = 200
            if num < 10 {
                print("比 10 小")
            } else if num > 100 {
                print("比 100 大")
            } else {
                print("10 ~ 100 之间的数字")
            }
            let request = URLRequest(url: u)
            print("-----执行到此，URL有值")
            print(request)
        }
        guard let u = url else {
            print("url 为nil")
            return
        }
        let request = URLRequest(url: u)
        print(request)
        
        
    }
    //可选URL类型的判断if let
    func demo2() -> Void {
        let ur1: URL? = URL(string: "http:www.baidu.com,哈哈")
//        //强制解包,如果可选类型为nil ,程序会崩溃
//        let request = URLRequest(url: ur1!)
//        print(request)
        //判断之后解包
        if ur1 != nil{
            let request = URLRequest(url: ur1!)
            print(request)
        }
        
        //if let 判断可选类型是否有值，有值就付给u,可选类型为nil 就不执行
        if let u = ur1{
            let request = URLRequest(url: u)
            print("------")
            print(request)
        }
        let url2: URL? = URL(string: "http:www.baidu.com")
        if let u = url2{
            let request2 = URLRequest(url: u)
            print(request2)
            print("------")
        }
    }
    
    
    //三目运算符
    func demo1() -> Void {
        let a: Int = 10
        let b: Int = 20
        let c = a>b ? a:b
        print(c)
    }
    //if语句
    func demo() -> Void {
        let num = 200
        if num < 10 {
            print("比 10 小")
        } else if num > 100 {
            print("比 100 大")
        } else {
            print("10 ~ 100 之间的数字")
        }
    }
  

}

