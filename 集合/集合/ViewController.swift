//
//  ViewController.swift
//  集合
//
//  Created by codygao on 16/9/17.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     //集合有两种：字典和数组
//    arraydemo()
//        dicdemo()
//        dicdemo1()
        dicdemo2()
        
}
    //字典的增删改
    func dicdemo2() -> Void {
        var dic:[String:Any] = ["name":"张三"]
        print("-----\(dic)")
        dic["age"] = 19
        dic["name"] = nil
        dic["sex"] = "nan"
        dic.removeValue(forKey: "age")
        let dic1:[String:Any] = ["num":002]
        for (key,value) in dic1 {
            dic[key] = value
        }
        print(dic)
    }
    //字典的遍历
    func dicdemo1() -> Void {
        let dic:[String:Any] = ["name":"zhangsan","age":19]
        for (key,value) in dic {
            print("------")
            print("key=\(key),value= \(value)")
            print("------")
        }
        
    }
    //创建字典
    func dicdemo() -> Void {
        let dic = ["name":"zhangsan","age":18] as [String : Any]
        print(dic)
        let dic1 :[String : Any] = ["name":"张三","age":19]
        print(dic1)
        var dic2 = ["name":"lisi"]
        dic2["name"] = "小李"
        print(dic2)
    }
    
    //创建数组
    func arraydemo() -> Void {
        var array = [1,2,3,4,5]
       array .insert(6, at: array.endIndex)
        array.append(7)
        array.removeFirst()
        print(array)
        print("-----")
        //遍历数组
        for i in array {
            print(i)
        }
        for (i,value) in array.enumerated() {
           print(i,value)
        }
        //指定类型
        let array1:[String] = ["hello","world"]
        //指定空数组
        let array2: [Int] = [Int]()
        let array3: [Double] = []
        let array4 = [8]
        array += array4
        print(array)
    }

}
