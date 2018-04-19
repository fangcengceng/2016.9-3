//
//  ViewController.swift
//  网络访问
//
//  Created by codygao on 16/9/18.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
 
        loadData()
    }

    func loadData(){
        //获取请求地址
        let urlstr = "http://www.weather.com.cn/data/sk/101010100.html"
        let url = URL(string: urlstr)
        let request = URLRequest(url: url!)
        //使用URLSession 下载数据dataTask
       URLSession.shared.dataTask(with: request) { (data, _, error) in
        //判断返回的数据是否有错误
        if error != nil{
            print("_____")
            print(error)
            return
        }
        
        //解析json 数据
        if data != nil{
            let dic = try? JSONSerialization.jsonObject(with: data!, options: [])
            
            print(dic)
        }
        
        }.resume()
        
    
    }

}

