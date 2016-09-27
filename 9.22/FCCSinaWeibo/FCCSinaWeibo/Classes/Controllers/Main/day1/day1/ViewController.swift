//
//  ViewController.swift
//  day1
//
//  Created by codygao on 16/9/23.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
//        demo0()
//        demo1()
//        demo2()
        //demo3()
//        demo4()
//        demo5()
       // demo6()
        //demo7()
        
        //联想masonry约束
        loadData { (result) in
            print(result)
            print("------")
        }
        
        let closure = { (result:String) ->() in
            
            print("--------------")
            print(result)
            
        }
        
        loadData(callback: closure)
    
    }
    //闭包的使用
    func loadData(callback: @escaping (String)->()) {
        
        DispatchQueue.global().async {
            print(Thread.current)
            Thread.sleep(forTimeInterval: 3)
            let string = "办证是123"
            
            DispatchQueue.main.async {
                callback(string)
            }
        }
        
        
        
    }
    
    
    
    //闭包
    func demo7() ->(){
        
        //闭包可以做为参数和返回值来使用
        let closure = {
            print(#function)
            
        }
        
    //定义闭包的关键字是in
        let c1 =  {() ->() in
            print(#function)
            print("午餐无返回值不败1")
        }
        
        let c2 = {() -> Void in
            print(#function)
            print("无参无返回值闭包2")
        }
        
        
        //有参有返回值
        let c3 = { (a:Int,b:Int) -> Int in
            
            return a + b
            
        }
        
        let result = c3(7, 9)
        print(result)
        
        
        
        
        
    }
    
    
    //集合
    func demo6() {
       //数组
        var arr1 = ["zhangsan","李四","王五"]
        let arr2: [Any] = [1,2,3,4,]
        let arr3:[String] = [String]()
        let arr4:[String] = ["苹果"]
        let arr5 = [String]()
        arr1.append("赵六")
        arr1.remove(at: 1)
        arr1.insert("--", at: 0)
        arr1 += arr4

        //改动
        arr1[0] = "香蕉"
        //遍历
        for value in arr1{
            print(value)
        }
        
        for i in 0..<arr1.count{
            print(arr1[i])
        }
        //遍历数组，
        for (i,value) in arr1.enumerated() {
            print(i,value)
        }
        
        print("---------")
        
        //字典
        var dic1 = ["name":"zhangsan","age":18] as [String : Any]
        
        print(dic1)
        
        var dic2: [String:Any] = ["sex":"女","scoll":12]
        //遍历字典
        for(key,value) in dic1{
            print(key,value)
            
        }
        //字典的合并
        for (key,value) in dic2{
            //添加键值对
            dic1[key] = value
            
        }
        
        //修改
        dic2["sex"] = "男"
        //增减没有
        dic2["height"] = 179
        //修改或添加
        dic2.updateValue("不知道性别", forKey: "sex")
        //删除
        dic2["height"] = nil
        dic2.removeValue(forKey: "sex")
      print(dic2)
    }
    
    
    
    //字符串
    func demo5() ->(){
        
        //字符串截取
        let hello = "helloworld"
        
        var substr = hello.substring(from: hello.startIndex)
        print(substr,"-----")
        substr = hello.substring(to: hello.endIndex)
        print(substr,"=======")
        let start = hello.index(hello.startIndex, offsetBy: 1)
        let end = hello.index(hello.endIndex, offsetBy: -1)
        
        substr = hello.substring(with: start..<end)
        print(substr,"--------")
        
        
        
        
        
        let str = "hello"
        //遍历
        for i in str.characters {
            print(i)
        }
        
        //拼接
        let world = "world,中国"
        print(str + world)
        
        //格式化
        let a = 10
        let b = 200
        let format = String(format:"%d%d",a,b)
        print(String(format:"%d%d",a,b))
        print(format)
        
        //字符串的长度
       let length = str.characters.count
        //指定编码下
        let legth1 = str.lengthOfBytes(using: String.Encoding.utf8)
        print(length,legth1)
        let length2 = (str as NSString).length
        print(length2)
        
        
     
        
        
        
        
    }
    
    //循环
    func demo4() {
        var index = 3
        for i in 0..<3 {
            print(i)
            index -= 1
            print("--------")
        }
        
        for i in 0...3 {
            print(i)
            index -= 1
            print("----------")
        }
        
        while index > 0 {
            print(index)
            index -= 1
            print("------")
        }
        
        repeat {
            print(index)
            index += 1
        }while index < 3
            
          
        }
    
        
        
    }
    
    
    //控制流
    func demo3() {
        
        let name: String? = "李四"
        let age: Int? = 20
        func demo4() {
            if var n = name, let a = age, n == "李四" && age == 20 {
                n = "xiaowu"
                print(n,a)
            }
            
            
        }
        demo4()
        
        
        let url = URL(string: "http.www.baidu.com")
        if url != nil{
            //可能要多次解包，麻烦
            let urlrequest = URLRequest(url: url!)
            print(urlrequest,"------",urlrequest.url)
        }
        
        if let u = url {
            
            let urlrequest = URLRequest(url: u)
            print(urlrequest,"-----",urlrequest.url)
        }
        
        if let u1 = url {
            //代码执行到此表示url不为空,只能保证不为空，
            print(u1)
            let urlrequest = URLRequest(url: u1)
            print(u1,urlrequest.url)
            
            //
        }
        
        //保证u2 有值，否则return
        guard let u2 = url  else {
            print("u2 为空")
            return
        }
        
        //多个可选类型
        
        
    }
    
    
    //可选类型
    func demo2() ->(){
        var a: Int? = nil
        
        if a != nil {
            let result = a! + 10
            print("判断后的\(result)")
        }
        
        a = 10
        let b = 20
        let c = a! + b
        print(c)
        
        let d: Int? = nil
        let f = b + (d ?? 0)
        print(f)
        
        
        
    }
    
    func demo1() -> () {
        let a = 10
        var b = 20
        let c: CGFloat = 30
        var d:Double = 40
        b = 50
        
        
        let result = a + b
        print("\(result)")
        
    }

//    func demo0() ->() {
//        let redv = UIView(frame: CGRect(x: 10, y: 10, width: 200, height: 200))
//        view.addSubview(redv)
//        redv.backgroundColor = UIColor.red
//        
//        let button = UIButton(type: .contactAdd)
//        redv.addSubview(button)
//    }




