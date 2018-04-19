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
    
    
    
}
