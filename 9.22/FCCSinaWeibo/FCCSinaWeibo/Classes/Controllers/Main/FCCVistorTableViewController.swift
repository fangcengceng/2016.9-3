//
//  FCCVistorTableViewController.swift
//  FCCSinaWeibo
//
//  Created by codygao on 16/9/21.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class FCCVistorTableViewController: UITableViewController {

    var islogin = true
    
    
    override func loadView() {
        if islogin{
            //使用系统自定义的view
            super.loadView()
        }else{
            //自定义视图
            let logview = UIView()
            view = logview
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
