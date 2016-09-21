//
//  HMTestViewController.swift
//  9.19新浪微博
//
//  Created by codygao on 16/9/21.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class HMTestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        
        addRightItem()
        
    }
    
    func addRightItem() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "push", target: self, action: #selector(pushAction))
        
        
    }
    
    func pushAction() {
        
        print("我是test控制器push出来的")
        
        
    }
    
 //END
}
