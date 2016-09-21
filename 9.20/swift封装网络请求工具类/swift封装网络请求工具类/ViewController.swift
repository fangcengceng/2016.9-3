//
//  ViewController.swift
//  swift封装网络请求工具类
//
//  Created by codygao on 16/9/20.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let url = "http://www.weather.com.cn/data/sk/101010100.html"
    
        NetworkTool.sharedtool.requestType(type: .GET, url: url, parameters: nil) { (response, error) in
            //处理错误信息
            if error != nil{
                print("网络请求出错")
                print(error)
            }
            if let reslut = response {
                
                print(reslut)
            }
            
        }
    }
   


}

