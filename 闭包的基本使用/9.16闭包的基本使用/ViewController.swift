//
//  ViewController.swift
//  9.16闭包的基本使用
//
//  Created by codygao on 16/9/17.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       //闭包主要用于异步操作完成后的回调
       // demo()
        let finishclosure  = {(str:String)->Void in
         print(str)
        }
        loadData(callBack: finishclosure)
        loadData{(str) in
            print(str)
            
        }
    }
    //尾随闭包：作为函数的最后一个参数
    func loadData(callBack: @escaping (String)->()) -> Void {
        DispatchQueue.global().async {
            //  模拟耗时操作
            Thread.sleep(forTimeInterval: 2)
            //  准备结果
            let result = "办证137xx"
            
            //  回到主线程
            DispatchQueue.main.async {
                callBack(result)
            }
        }
        
        
    }
    
    //异步函数
//    func demo(){
//        DispatchQueue.global().async { 
//         print("\(Thread.current)")
//        }
//    }
    

}

