//
//  FCCTabBarViewController.swift
//  FCCSinaWeibo
//
//  Created by codygao on 16/9/21.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class FCCTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

    
        addChildViewController(childController: FCCHomeTableViewController(), title: "首页",imageName:"tabbar_home" )
        addChildViewController(childController: FCCMessageTableViewController(), title: "消息", imageName: "tabbar_message_center")
        addChildViewController(childController: FCCDiscoverTableViewController(), title: "发现", imageName: "tabbar_discover")
        addChildViewController(childController: FCCProfilesTableViewController(), title: "我的", imageName: "tabbar_profile")
        
        
    }

    func addChildViewController( childController: UIViewController, title: String ,imageName: String) {
        //标题
        childController.title = title
        childController.tabBarItem.title = title
        //改变底部标签栏的颜色（可以统一设置导航条出现时的tintcolor）,大小
//        childController.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.darkGray], for: .normal)
//        childController.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.orange], for: .highlighted)
        childController.tabBarItem.setTitleTextAttributes([NSFontAttributeName:UIFont.systemFont(ofSize: 14)], for: .normal)
        //图片
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: "\(imageName)_selected")
        
        //将根控制器做为导航控制器来包装
        let nav = UINavigationController(rootViewController: childController)
        addChildViewController(nav)
        
    }
   

}
