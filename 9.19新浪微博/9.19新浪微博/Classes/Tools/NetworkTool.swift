//
//  NetworkTool.swift
//  swift封装网络请求工具类
//
//  Created by codygao on 16/9/20.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit
import AFNetworking
enum RequestType: Int {
    case GET
    case POST
}
class NetworkTool: AFHTTPSessionManager {

    //创建一个单例接入点类方法创建
  
   
    static var sharedtool: NetworkTool = {
        let tool = NetworkTool()
        tool.responseSerializer.acceptableContentTypes?.insert("text/html")
       tool.responseSerializer.acceptableContentTypes?.insert("text/plain")
        return tool
        
    }()
  

    //封装网络请求函数
    func requestType(type: RequestType,url: String ,parameters: Any?, callback: @escaping (Any?,Error?)->())  {
       
        if(type == .GET){
            get(url, parameters: nil, progress: nil, success: { (_, response) in
               
                callback(response,nil)
                }) { (_, error) in
                   
                    callback(nil,error)
            }
        }else{
            post(url, parameters: nil, progress: nil, success: { (_, resp) in
                callback(resp,nil)
                }, failure: { (_, error) in
                    callback(nil,error)
            })
        }
        
    }
    //END
}

extension NetworkTool{
    
    //  根据code获取accesstoken
    func requestAccessToken(code: String, callBack: @escaping (Any?, Error?)->()) {
        //  请求接口地址
        let url = "https://api.weibo.com/oauth2/access_token"
        //  准备请求需要的参数
        let params = [
            "client_id": WeiboAppKey,
            "client_secret": WeiboAppSecret,
            "grant_type": "authorization_code",
            "code": code,
            "redirect_uri": WeiboRedirect_Uri
            
        ]
        //  使用封装好的get/post请求
        requestType(type: .POST, url: url, parameters: params, callback: callBack)
    }
    
    //根据accesstoken 获取用户信息
    
    func requestUseInfo(accessToke: String,UID: Int64,calllBack:@escaping ((Any?,Error?)->())) {
        let url = "https://api.weibo.com/2/users/show.json"
        let parameters:[String: Any] = ["access_token":accessToke,"uid":UID]
        requestType(type: .GET, url: url, parameters: parameters, callback: calllBack)
    
    }
    
    
    
//END
}




