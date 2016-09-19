//
//  HMMainViewController.swift
//  9.19新浪微博
//
//  Created by codygao on 16/9/19.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class HMMainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //将图片颜色修改为原来的颜色，方法有两种：一种是设置图片的渲染模式，一种是设置tabbar 的属性
//        UITabBar.appearance().tintColor = UIColor.orange

        
        //添加子视图
        addChildViewController(childController:HMHomeTableViewController(), title: "首页", imageName: "tabbar_home")
        
        addChildViewController(childController: HMDiscoverViewController(), title: "发现", imageName: "tabbar_discover")
        addChildViewController(childController: HMMessageViewController(), title: "消息", imageName: "tabbar_message_center")
        addChildViewController(childController: HMProfilesViewController(), title: "我的", imageName: "tabbar_profile")

    }

    //重载添加子视图的方法
    func addChildViewController(childController: UIViewController,title: String,imageName: String) {
        
//        //添加带文字的图片,前提是UI给的是图文一体的图片
//        if(title == "我的"){
//            childController.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0)
//            
//        }else{
//            childController.tabBarItem.title = title
//            childController.navigationItem.title = title
//            childController.title = title
//            
//            
//        }
        
        
        
        
        //        childController.tabBarItem.title = title //默认字体颜色与大小

      //设置字体大小和选中的
        childController.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.orange], for: .selected)
        childController.tabBarItem.setTitleTextAttributes([NSFontAttributeName:UIFont.boldSystemFont(ofSize: 14)], for: .normal)
        
        //设置图片
        childController.tabBarItem.image = UIImage.init(named: imageName)
        childController.tabBarItem.selectedImage = UIImage.init(named: "\(imageName)_selected")?.withRenderingMode(.alwaysOriginal)
        let nav = UINavigationController.init(rootViewController: childController)
        //设置导航条标题，并且将其包成nav
        childController.title = title
        addChildViewController(nav)
    }

}
