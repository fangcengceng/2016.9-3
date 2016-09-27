//
//  ViewController.swift
//  调度组
//
//  Created by codygao on 16/9/25.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo()
    }

    
    
    func demo() {
        //床架调度组
        let group = DispatchGroup()
        DispatchQueue.global().async(group: group, qos: DispatchQoS.default, flags: []) { 
            //执行任务
            Thread.sleep(forTimeInterval: 2)
            print("renwuyi zhixing wancheng ")
            
        }
        //
        DispatchQueue.global().async(group: group, qos: DispatchQoS.default, flags: []) {
            //执行任务
            Thread.sleep(forTimeInterval: 1)
            print("2 zhixing wancheng ")
            
        }
        //notify ,实时监听调度组还有没有任务
     group.notify(queue: DispatchQueue.main) { 
    print("加载完成")
        
        }
      
        
       let group1 = DispatchGroup()
        
        DispatchQueue.global().async(group: group1, qos: DispatchQoS.default, flags: []) {
            
            //执行任务
        }
        
        DispatchQueue.global().async(group: group1, qos: DispatchQoS.default, flags: []) { 
            //执行任务
        }
    }
    
    
    
    
    
    
    
    
    
    

}

