//
//  FCCDiscoverTableViewController.swift
//  FCCSinaWeibo
//
//  Created by codygao on 16/9/21.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class FCCDiscoverTableViewController: FCCVistorTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.titleView  = FCCSearchView(frame: CGRect.init(x:0,y:0,width:self.view.bounds.size.width,height:40))
        
    
    }
}
