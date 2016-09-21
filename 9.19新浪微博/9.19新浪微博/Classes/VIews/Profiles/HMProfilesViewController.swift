//
//  HMProfilesViewController.swift
//  9.19新浪微博
//
//  Created by codygao on 16/9/19.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class HMProfilesViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        //setupNav()
        
        //添加右侧的push按钮
        addrightPushItem()
        
    }
    
    //右侧的push按钮
    func addrightPushItem()  {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title:"push", target:self, action:#selector(rightPushItemAction))
        
    }
    
    //右侧的push按钮的点击事件
    func rightPushItemAction() {
        let testc = HMTestViewController()
        navigationController?.pushViewController(testc, animated: true)
    }
    
    func setupNav(){
        
//        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "登陆")
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "注册")
        
    }
}
