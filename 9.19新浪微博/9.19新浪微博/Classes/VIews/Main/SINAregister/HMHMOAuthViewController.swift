//
//  HMHMOAuthViewController.swift
//  9.19新浪微博
//
//  Created by codygao on 16/9/21.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit
import SVProgressHUD

//  第三方登录视图控制器
//  新浪开发平台提供的APPKey
let WeiboAppKey = "2707543009"
//  AppSecret
let WeiboAppSecret = "975492f53ff3df657f0c435e935ef822"
//  授权回调页
let WeiboRedirect_Uri = "http://www.itcast.cn"

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
       let url = "https://api.weibo.com/oauth2/authorize?client_id=\(WeiboAppKey)&redirect_uri=\(WeiboRedirect_Uri)"

        let urlRequest = URLRequest(url: URL(string: url)!)
        
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
    //自动填充按钮
    @objc private func autoFillAction(){
    outhView.stringByEvaluatingJavaScript(from: "document.getElementById('userId').value = 'hao123guohaibin@163.com';document.getElementById('passwd').value = 'guohaibin123'")
        
    }
    

    //取消按钮
    @objc private func popPresentController() {
       
        dismiss(animated: true, completion: nil)
    }
   
    //请求accesToken的方法
    func requestAccesstoken(code: String) {
        
        NetworkTool.sharedtool.requestAccessToken(code: code) { (response, error) in
            if error != nil {
                print("网络请求异常: \(error)")
                return
            }
            
            //  代码执行到此,网络请求成功
            guard let dic = response as? [String: Any] else {
                print("你是不是一个正确的字典格式")
                return
            }
            
          let useraccount = HMUserAccount(dic: dic)
            print(useraccount.access_token)
           self.requestUseIfo(useraccount: useraccount)

        }
        
    }
    
//    //请求用户信息的方法
//    func requestUseIfo(useraccount:HMUserAccount) {
//        NetworkTool.sharedtool.requestUseInfo(accessToke: useraccount.access_token!, UID: useraccount.uid) { (response, error) in
//          
//            if error != nil{
//                print(error)
//                print("网路请求出错")
//                return
//            }
//            
//            guard let dic = response as? [String: Any] else{
//                print("字典格式不正确")
//                return
//            }
//            
//            let name = dic["name"]
//            let avatar_large = dic["avatar_large"]
//            
//            useraccount.name = name as? String
//            useraccount.avatar_large = avatar_large as? String
//        //代码执行到此，表示需要进行存储
//            useraccount.saveuseraccount()
//            
//            
//            
//        }
    
        
        
        
    //}
    
    //END
 
}

//分类，webview代理
extension HMHMOAuthViewController:UIWebViewDelegate{
    
    
    //将要准备加载
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        //  判断url是否合法
        guard let url = request.url else {
            
            print("url 为 nil")
            
            return false
        }
        
        print( url.absoluteString)
        
        if !url.absoluteString.hasPrefix(WeiboRedirect_Uri) {
            //  表示不是我们关心
            return true
        }
        
        //  代码执行到此表示是是我们关系的请求地址
        //  取到地址栏中的参数
        if let query = url.query , query.hasPrefix("code=") {
            //  根据光标的结束位置获取子串
            let code = query.substring(from: "code=".endIndex)
            //  通过code获取accesstoken
            requestAccesstoken(code: code)
            
        }
        
        
        
        
        return false
    }
    

    //开始加载
    func webViewDidStartLoad(_ webView: UIWebView) {

        SVProgressHUD.show()
        
    }
    //结束加载
    func webViewDidFinishLoad(_ webView: UIWebView) {
       SVProgressHUD.dismiss()
    }
    //加载失败
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        SVProgressHUD.dismiss()
    }
    
}


