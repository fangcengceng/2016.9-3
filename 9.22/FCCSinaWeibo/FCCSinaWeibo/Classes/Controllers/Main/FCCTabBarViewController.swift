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

//    self.tabBar = FCCTabBar()  只读属性
//         let addtabbar = FCCTabBar()
//         setValue(addtabbar, forKey: "tabBar")
        
    
        addChildViewController(childController: FCCHomeTableViewController(), title: "首页",imageName:"tabbar_home" )
        addChildViewController(childController: FCCMessageTableViewController(), title: "全部商品", imageName: "allproducts")
        addChildViewController(childController: FCCDiscoverTableViewController(), title: "发现", imageName: "tabbar_discover")
        addChildViewController(childController: FCCProfilesTableViewController(), title: "我的", imageName: "tabbar_profile")
        
        
    }

    func addChildViewController( childController: UIViewController, title: String ,imageName: String) {
        
        if title == "全部商品"{
          childController.tabBarItem.imageInsets = UIEdgeInsets.init(top: 3, left: 0, bottom: -3, right: 0)
            
        }else{
            //标签栏标题
            childController.tabBarItem.setTitleTextAttributes([NSFontAttributeName:UIFont.systemFont(ofSize: 14)], for: .normal)
           
//            childController.tabBarItem.title = title
//            childController.navigationItem.title = title
            //两句代码合成一句
             childController.title = title
            //改变底部标签栏的颜色（可以统一设置导航条出现时的tintcolor）,大小
            //        childController.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.darkGray], for: .normal)
            //        childController.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.orange], for: .highlighted)
        }
    
        
        
        
        
        //图片
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: "\(imageName)_selected")
        
        //将根控制器做为导航控制器来包装
        let nav = FCCNavViewController(rootViewController: childController)
        addChildViewController(nav)
        
    }
   

}
