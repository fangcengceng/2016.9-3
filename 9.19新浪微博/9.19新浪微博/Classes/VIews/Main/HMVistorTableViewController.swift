//
//  HMVistorTableViewController.swift
//  9.19新浪微博
//
//  Created by codygao on 16/9/21.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class HMVistorTableViewController: UITableViewController {
    
    var isloging:Bool = false
    //自定义视图控制器
    override func loadView() {
        if isloging{
            super.loadView()
            
        }else{
            //否则提供自定义视图
            let visitorView = UIView()
            visitorView.backgroundColor = UIColor.red
            view = visitorView
            setupNav()
        }
        
    }
    
    private  func setupNav(){
//        设置左侧的按钮
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "登陆", target: self, action: #selector(loginAction))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "注册", target: self, action: #selector(loginAction))
    }

    func  loginAction() {
        
        print("你点击了visitor控制器的登陆按钮")
        
    }
    

   override func viewDidLoad() {
        super.viewDidLoad()
  
    }
    
    
    
    
    

    //END
}
