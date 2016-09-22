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


//网络相关接口处理
extension NetworkTool{
    //  根据code获取accesstoken
    func requeryAccessToken(code:String,callBack:@escaping(Any?,Error?)->()){
        
        let url = "https://api.weibo.com/oauth2/access_token"
        let parameters = ["client_id":weiboAppKey,
                        "client_secret":weiboAPPSecret,
                        "grant_type":"authorization_code",
                        "code":code,
                        "redirect_uri": weiboRedirect_Uri
                          ]
    NetworkTool.sharedtool.requestType(type: .POST, url: url, parameters: parameters, callback: callBack)
        

    }
    
    //通过accessToken获取用户相关信息
    func requestUserInfo(accessToken: String, uid: Int64, callBack:@escaping(Any?,Error?)->())  {
        //网络请求接口
        let url = "https://api.weibo.com/2/users/show.json"
        //网络请求参数
        let paramters: [String: Any?] = [ "access_token": accessToken,
                                          "uid": uid]
        
      requestType(type: .GET, url: url, parameters: paramters, callback: callBack)

    }
    
    
    
}


