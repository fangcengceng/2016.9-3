//
//  HMNavViewController.swift
//  9.19新浪微博
//
//  Created by codygao on 16/9/21.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class HMNavViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
       
    }

//    //自定义NavViewControuler ,重写push 方法，拿到有几个控制器
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
      
        print("-------")
        print(childViewControllers.count)
        
        //一定要重写父类的push方法，否则下面的四个根控制器无法显示
        super.pushViewController(viewController, animated: true)
        
    }


}
