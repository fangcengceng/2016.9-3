//
//  HMUserAccount.swift
//  9.19新浪微博
//
//  Created by codygao on 16/9/22.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit
//存储或者读取沙盒路径
private let path = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last! as NSString).appendingPathComponent("useraccount.abdd")

class HMUserAccount: NSObject,NSCoding {
//用户授权唯一票据
    var access_token: String?
    //access_token的生命周期
    var expires_in: TimeInterval = 0 {
        didSet {
            
            //  过期时间 =  当前时间 + 过去秒数
            expiresDate = Date().addingTimeInterval(expires_in)
        }
    }
    //  过期时间对象
    var expiresDate: Date?
    //授权用户的uid
    var uid: Int64 = 0
    //用户名
    var name: String?
    //用户头像
    var avatar_large: String?
    
 
    //KVC构造函数
    init(dic:[String: Any]) {
        
        super.init()
        setValuesForKeys(dic)
    }
    
    //防止字段不匹配
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
    
    //存储

    func encode(with aCoder: NSCoder) {
        aCoder.encode(access_token, forKey: "access_token")
        aCoder.encode(uid, forKey: "uid")
        aCoder.encode(expiresDate, forKey: "expiresDate")
        aCoder.encode(name, forKey: "name")
        aCoder.encode(avatar_large, forKey: "avatar_large")
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        access_token = aDecoder.decodeObject(forKey: "access_token") as? String
        expiresDate = aDecoder.decodeObject(forKey: "expiresDate") as? Date
        uid = aDecoder.decodeInt64(forKey: "uid")
        name = aDecoder.decodeObject(forKey: "name") as? String
        avatar_large = aDecoder.decodeObject(forKey: "avatar_large") as? String
        
        
    }
    
    
    //存储

    func saveuseraccount() {
        NSKeyedArchiver.archiveRootObject(self, toFile: path)
    }
    
   //读取
  class  func readuseraccount() ->HMUserAccount{
        
        
        return NSKeyedUnarchiver.unarchiveObject(withFile: path) as! HMUserAccount
    }
    
    
    
    
}
