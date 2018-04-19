//
//  NetworkTool.swift
//  oc与swift混编
//
//  Created by codygao on 16/9/20.
//  Copyright © 2016年 HM. All rights reserved.
//



import UIKit

class NetworkTool: NSObject {

    //创建单例类
    //创建全局单例类
    static var networktool: NetworkTool = NetworkTool()
    
    static var networktool2: NetworkTool = {
        let tool = NetworkTool()
        //仔设置乞讨属性
        return tool
    }()
    
}
