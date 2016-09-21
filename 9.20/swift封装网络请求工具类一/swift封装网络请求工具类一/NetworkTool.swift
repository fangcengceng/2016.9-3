//
//  NetworkTool.swift
//  swift封装网络请求工具类一
//
//  Created by codygao on 16/9/21.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit
import AFNetworking
enum RequestType: Int {
    case GET
    case POST
}

class NetworkTool: AFHTTPSessionManager{
    
    //创建全局单例接入口
    static let sharedtool: NetworkTool = {
        
        let tool = NetworkTool()
        tool.responseSerializer.acceptableContentTypes?.insert("text/html")
          return tool
    }()
   
    
    func requestType(type: RequestType,url: String,parameter: Any?,callback: @escaping (Any?,Error?)->Void){
        
        //枚举要用.
        if type == .GET{
            get(url, parameters: nil, progress: nil, success: { (_, response) in
                callback(response, nil)
                }, failure: { (_, error) in
                    callback(nil,error)
            })
        }else{
            post(url, parameters: nil, progress: nil, success: { (_, response) in
                callback(response,nil)
                }, failure: { (_, error) in
                    callback(nil,error)
            })
        }
        
        
    }

}
