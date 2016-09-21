//
//  HMProfilesViewController.swift
//  9.19新浪微博
//
//  Created by codygao on 16/9/19.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class HMProfilesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        //setupNav()
        
        //添加右侧的push按钮
        addrightPushItem()
        
    }
    
    //右侧的朴实按钮
    func addrightPushItem()  {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title:"push", target:self, action:#selector(rightPushItemAction))
        
    }
    
    func rightPushItemAction() {
        let testc = HMTestViewController()
        navigationController?.pushViewController(testc, animated: true)
    }
    
    func setupNav(){
//        //设置左侧的按钮
//        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "登陆")
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "注册")
        
    }
}
