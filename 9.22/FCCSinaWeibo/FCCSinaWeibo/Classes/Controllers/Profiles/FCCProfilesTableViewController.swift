//
//  FCCProfilesTableViewController.swift
//  FCCSinaWeibo
//
//  Created by codygao on 16/9/21.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class FCCProfilesTableViewController: FCCVistorTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNav()
        
    }
    func setupNav() {
        

        navigationItem.rightBarButtonItem = UIBarButtonItem(title:"push", target:self, action: #selector(pushShouTitle))
        
    }
    func pushShouTitle() {
        let vc = FCCShowTitleViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
