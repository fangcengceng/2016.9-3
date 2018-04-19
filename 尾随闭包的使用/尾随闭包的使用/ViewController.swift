//
//  ViewController.swift
//  尾随闭包的使用
//
//  Created by codygao on 16/9/17.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let closure = {(result1:String)->Void in
            print(result1)
            //刷新页面，加载UI
        }
        demo(callBack: closure)
    }
    func demo(callBack:@escaping (String)->()) -> Void {
       DispatchQueue.global().async {
       Thread.sleep(forTimeInterval: 2)
        print("\(Thread.current)")
       let result = "今天是在使用尾随闭包"
        //会主线程刷新
        DispatchQueue.main.async{
          callBack(result)
        }
        }
        
        
        
    }

}

