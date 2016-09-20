//
//  HMDIscoverView.swift
//  9.19新浪微博
//
//  Created by codygao on 16/9/19.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class HMDIscoverView: UIView {

    @IBOutlet weak var searchButton: UIButton!
    //拿到文本框右边的约束
    @IBOutlet weak var textfieldRightConstraint: NSLayoutConstraint!
    //拿到文本框
    @IBOutlet weak var textField: UITextField!
    //点击按钮的事件,键盘收回，文本框回到原位
    @IBAction func searchButton(_ sender: AnyObject) {
        self.textField.resignFirstResponder()
        self.endEditing(true)
        self.textfieldRightConstraint.constant = 0
        UIView.animate(withDuration: 0.5) {
            self.layoutIfNeeded()
        }
    }
    
    //开始编辑的时候的动画
    @IBAction func begineditAction(_ sender: AnyObject) {
//
        self.textfieldRightConstraint.constant = searchButton.width
        UIView.animate(withDuration: 0.5) {
            //重新布局子空间
            self.layoutIfNeeded()
        }
        
    }
    //类方法,加载Xib
    class func searchView() ->HMDIscoverView{
        
        return UINib(nibName: "HMDIscoverView", bundle: nil).instantiate(withOwner: self, options: nil).last! as! HMDIscoverView
    }

}
