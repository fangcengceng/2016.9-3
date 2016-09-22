//
//  HMHMOAuthViewController.swift
//  9.19新浪微博
//
//  Created by codygao on 16/9/21.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

//新浪授权appket
let weiboAppKey = "1799735418"
//新浪授权回调页
let weiboRedirect_Uri = "http://www.bejson.com/jsonviewernew"

class HMHMOAuthViewController: UIViewController {

   
    lazy var outhView: UIWebView = UIWebView()
    //自定义视图
    override func loadView() {
        //解决背景的黑条问题
      
        
        view = outhView
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        //准备url
        let urlStr = "https://api.weibo.com/oauth2/authorize?client_id=\(weiboAppKey)&redirect_uri=\(weiboRedirect_Uri)"
        print(urlStr)
        
        
        let urlRequest = URLRequest(url: URL(string: urlStr)!)
        
     //加载数据,并解决背景黑条问题
          outhView.isOpaque = false
        outhView.loadRequest(urlRequest)
        
        //获取授权码code
        outhView.delegate = self
        
    addNavItem()
    }

    //添加导航栏左右按钮
    func addNavItem() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "取消", target: self, action: #selector(popPresentController))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "自动填充", target: self, action: #selector(autoFillAction))
    }
    @objc private func autoFillAction(){
        outhView.stringByEvaluatingJavaScript(from: "document.getElementById('userId').value = '13140103066';document.getElementById('passwd').value = 'fcc198709166'")
        
    }
    

    //取消按钮
    @objc private func popPresentController() {
       
        dismiss(animated: true, completion: nil)
    }
    
    //END
}

//分类，webview代理
extension HMHMOAuthViewController:UIWebViewDelegate{
    
    
    //将要准备加载
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        //判断url是否合法
        guard let url = request.url else {
            print("url不合法")
            return  false
            
        }
        
        print(url.absoluteString)
        
        if  !url.absoluteString .hasPrefix(weiboRedirect_Uri){
            //表示不是我们关心的
            return true
        }
        
        //代码执行到此，表示是我们关心的请求参数，获取，地址的参数，获得授权
        if let query = url.query , query.hasPrefix("code=") {
            //  根据光标的结束位置获取子串
            print(query)
            let code = query.substring(from: "code=".endIndex)
            
            print(code)
        }
        
        
        
        
        
        //return true表示网页可以加载，return false 表示禁止网页加载
        return false
    }
    


    //开始加载
    func webViewDidStartLoad(_ webView: UIWebView) {
        print("webViewDidStartLoad")
        
    }
    //结束加载
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("")
    }
    //加载失败
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        
    }
    
    
    
    
}


