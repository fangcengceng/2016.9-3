//
//  FCCSearchView.swift
//  FCCSinaWeibo
//
//  Created by codygao on 16/9/21.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit
var textfiled: UITextField?
var button: UIButton?

class FCCSearchView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUI()
        
    }
    func setupUI() -> () {
        //添加搜索按钮
        button = UIButton()
        button?.setTitle("search", for: .normal)
        button?.setTitleColor(UIColor.gray, for: .normal)
        button?.isHidden = true
        insertSubview(button!, at: 0)
      
        //设置约束
        button?.snp_makeConstraints { (make) in
            make.right.equalTo(self.snp_right)
            make.top.equalTo(self.snp_top)
           make.bottom.equalTo(self)
            make.width.equalTo(100)
        }
        
        //添加文本框视图
        textfiled = UITextField()
       //设置文本框边框的颜色和宽度
        textfiled?.layer.borderColor = UIColor.red.cgColor
        textfiled?.layer.borderWidth = 3
        textfiled?.layer.cornerRadius = 5
        textfiled?.layer.masksToBounds = true
        //监听文本框的值改变时候的时间
        textfiled?.addTarget(self, action: #selector(textframeChanged), for: .editingDidBegin)
        
        addSubview(textfiled!)
        textfiled?.snp_makeConstraints { (make) in
            make.left.equalTo(self)
            make.top.equalTo(self)
            make.right.equalTo(self)
            make.bottom.equalTo(self)
            
        }
    }

    
    func textframeChanged() {

        button?.isHidden = false
        print("------")
        textfiled?.snp_updateConstraints { (make) in
            make.left.equalTo(self)
            make.top.equalTo(self)
            make.right.equalTo(self).offset(-100)
            make.bottom.equalTo(self)
        //重新布局子控件位置
            UIView.animate(withDuration: 0.5, animations: {
                 super.layoutIfNeeded()
            })
       
        }
    }
    //END
}
