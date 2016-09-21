//
//  HMHMOAuthViewController.swift
//  9.19新浪微博
//
//  Created by codygao on 16/9/21.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

//新浪授权appket
let weiboAppKey = "2707543009"
//新浪授权回调页
let weiboRedirect_Uri = "http://www.itcast.cn"

class HMHMOAuthViewController: UIViewController {

   
    lazy var outhView: UIWebView = UIWebView()
    //自定义视图
    override func loadView() {
        //解决背景的黑条问题
        outhView.isOpaque = false
        
        view = outhView
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        //准备url
        let urlStr = "https://api.weibo.com/oauth2/authorize?client_id=\(weiboAppKey)&redirect_uri=\(weiboRedirect_Uri)"
        let urlRequest = URLRequest(url: URL(string: urlStr)!)
        
     //加载数据
        outhView.loadRequest(urlRequest)
        
        
        
        
        //加载百度网页，因为只是加载网页，不涉及到任何get，post请求
//        outhView.loadRequest(URLRequest.init(url: URL(string: "http://www.baidu.com")!))

    }

    //添加导航栏左右按钮
    func addNavItem() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "取消", target: self, action: #selector(popPresentController))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "自动填充", target: self, action: #selector(autoFillAction))
    }
    @objc private func autoFillAction(){
        outhView.stringByEvaluatingJavaScript(from: "document.getElementById('userId').value = 'hao123guohaibin@163.com';document.getElementById('passwd').value = 'guohaibin123'")
        
    }
    

    //取消按钮
    @objc private func popPresentController() {
       
        dismiss(animated: true, completion: nil)
    }
    
}
