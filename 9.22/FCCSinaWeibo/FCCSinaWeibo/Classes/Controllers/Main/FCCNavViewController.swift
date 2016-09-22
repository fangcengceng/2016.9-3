//
//  FCCNavViewController.swift
//  FCCSinaWeibo
//
//  Created by codygao on 16/9/22.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class FCCNavViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    //重写push方法
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        print(viewControllers.count)
        if viewControllers.count > 0{
            
            if viewControllers.count == 1{
                
                
            }
        }
        
        
        
        super.pushViewController(viewController, animated: true)
 
        
    }

 

}
