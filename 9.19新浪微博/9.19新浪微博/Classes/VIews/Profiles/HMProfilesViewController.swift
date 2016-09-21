//
//  HMProfilesViewController.swift
//  9.19新浪微博
//
//  Created by codygao on 16/9/19.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class HMProfilesViewController: HMVistorTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    
   
    //END
}
