//
//  HMDiscoverViewController.swift
//  9.19新浪微博
//
//  Created by codygao on 16/9/19.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class HMDiscoverViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //类方法自定义搜索视图
        navigationItem.titleView = HMDIscoverView.searchView()
        
       // setupNav()
    }
    
  private  func setupNav(){
        //设置左侧的按钮
//        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "登陆")
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "注册")
//        
    }
    

    

}
