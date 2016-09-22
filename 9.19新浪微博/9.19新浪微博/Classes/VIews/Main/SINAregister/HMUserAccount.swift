//
//  HMUserAccount.swift
//  9.19新浪微博
//
//  Created by codygao on 16/9/22.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class HMUserAccount: NSObject {

    //用户授权唯一票据
    var access_token: String?
    //access_token 的生命周期
    var expires_in: String?
    
    //	授权用户的UID
   var uid: Int64 = 0 

    //  用户名
    var name: String?
    //  用户头像
    var profile_image_url: String?

    
    //KVC构造函数
    init(dic:[String: Any]) {
        
        super.init()
        setValuesForKeys(dic)
    }
    
    //防止字段不匹配
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
    
}
