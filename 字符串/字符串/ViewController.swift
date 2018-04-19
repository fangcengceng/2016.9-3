//
//  ViewController.swift
//  字符串
//
//  Created by codygao on 16/9/17.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        demo1()
//        demo2()
//        demo3()
//        demo4()
//        demo5()
        demo6()
        
    }
    //字符串的截取
    func demo6(){
        let str:String = "hello"
        var result:String?
        result = str.substring(to: str.endIndex)
        print("-----",result)
        result = str.substring(from: str.startIndex)
        print("......",result)
        
        //将其转化为那是NSString 再进行截取
        result = (str as NSString).substring(with: NSMakeRange(1, str.characters.count - 2))
        print(result)
        
        
        
    }
    //字符串的格式化
    func demo5() -> Void {
        let year = 2016
        let month = 9
        let day = 17
        print("%d","%02d","%02d",year,month,day)
        let str = String(format: "%d:%02d:%02d",year,month,day)
        print(str)
        let str1 = String(format: "%d-%d-%d", arguments: [year,month,day])
        print(str1)
        print("-----")
    }
    //字符串的拼接
    func demo4() -> Void {
        //都是字符串的拼接
        let str1 = "hello"
        let str2 = "world"
        let str3: String? = "nil"
        let str = str1 + str2
        print("都是字符串的拼接",str)
       //有int 类型的拼接
        let num: Int = 2
        let numstr = "不同类型的字符串拼接方式1" + String(num) + str
        print(numstr)
        let numstr2 = "不同类型的字符串的拼接的方式2" + "\(num)" + str
        print(numstr2)
        let numstr3 = "可选类型拼接" + (str3 ?? "0") + str
        print(numstr3)
        
    }
    //字符串的长度
    func demo3() -> Void {
        var str = "helloworld,中国"
      
        //在指定编码下的字符串长度
        let len: Int? = str.lengthOfBytes(using: String.Encoding.utf8)
        if let u = len{
            print("len==")
            print(u)
        }
        let len1 = str.utf8.count
        print("len1==",len1)
        
        
        //字符串的长度
        let len2 = str.characters.count
        print("len2 ==",len2)
        
        
        
    }
    //字符串的遍历
    func demo2(){
        let str1:String? = "hello,中国"
        guard let str = str1 else {
            print("这是一个空的字符串")
        }
        //带下标的遍历
        for value in str.characters.enumerated() {
            print(value)
            print("-----")
        }
        //不带下标的遍历
        for single in str.characters {
            print(single)
            print(str)
        }
        
        
        
    }
    //字符串的创建
    func demo1(){
        let str = "hello world"
        var str1 = "你好，中国"
        str1 += "你好，中国"
        let str2 = ""
        var str3 = ""
        var str4:String = String()
        str4 = "这原本是一个空的字符串"
        print("str==---",str,"str1==----",str1,"str2==----",str2,"str3==----",str3,"str4==---",str4)
    }


}

