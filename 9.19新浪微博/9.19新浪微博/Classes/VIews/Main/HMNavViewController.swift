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
        
        print("------")
        print(viewControllers.count)
        
        //获取上一级控制器的title
        let title = viewControllers.first?.title
        if viewControllers.count > 0 {
            
            if(viewControllers.count == 1){
                //必须添加上viewController.不然还是系统自定义的左侧按钮
           viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(title: title!, imageName: "navigationbar_back_withtext", target: self, action: #selector(backAction))
            }else{
              viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "返回", target: self, action: #selector(backAction))
            }
            viewController.title = "当前显示的是第\(viewControllers.count+1)级控制器"
        }
        
        
      //先调用父类的super方法，否则下面的四个控制器，显示不出来
        super.pushViewController(viewController, animated: true)
    }
    
    
    func backAction() {
        popViewController(animated: true)
    }

//END
}
