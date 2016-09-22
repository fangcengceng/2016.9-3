//
//  FCCTabBar.swift
//  FCCSinaWeibo
//
//  Created by codygao on 16/9/22.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class FCCTabBar: UITabBar {
    
    //懒加载定义加号按钮
    lazy var addButton: UIButton = {
        let button = UIButton()
        //添加事件
        
        
        button.setImage(UIImage(named:"tabbar_compose_icon_add"), for: .normal)
    button.setImage(UIImage(named:"tabbar_compose_icon_add_highlighted"), for: .highlighted)
      button.setBackgroundImage(UIImage(named:"tabbar_compose_button"), for: .normal)
        button.setBackgroundImage(UIImage(named:"tabbar_compose_button_highlighted"), for: .highlighted)
    
           button.sizeToFit()

        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
     func setupUI() {
    
        addSubview(addButton)
    
    
    }
    
    
    
    
    

}
