//
//  ViewController.swift
//  swift封装网络请求工具类一
//
//  Created by codygao on 16/9/21.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let url = "http://www.weather.com.cn/data/sk/101010100.html"
        NetworkTool.sharedtool.requestType(type: .GET, url: url, parameter: nil) { (response, error) in
            if error != nil {
                print(error)
            }
            
            if let result = response{
                print(result)
            }
            
        }
        
        
    }

    


}

