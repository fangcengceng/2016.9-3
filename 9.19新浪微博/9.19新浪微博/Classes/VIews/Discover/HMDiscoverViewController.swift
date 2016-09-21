//
//  HMDiscoverViewController.swift
//  9.19新浪微博
//
//  Created by codygao on 16/9/19.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class HMDiscoverViewController: HMVistorTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        //类方法自定义搜索视图，在登陆后显示
        if isloging{
           navigationItem.titleView = HMDIscoverView.searchView()
        }
    }
    

    

    
//END
}
