//
//  FCCBarButtonItem.swift
//  FCCSinaWeibo
//
//  Created by codygao on 16/9/21.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    
    //创建一个遍历构造函数
    convenience init(title: String, target: Any?,action:Selector) {
        self.init()
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(UIColor.gray, for: .normal)
        button.setTitleColor(UIColor.orange, for: .highlighted)
        button.sizeToFit()
        button.addTarget(target, action: action, for: .touchUpInside)
        customView = button
    }
  

}
