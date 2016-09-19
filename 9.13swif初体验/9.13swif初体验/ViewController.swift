//
//  ViewController.swift
//  9.13swif初体验
//
//  Created by codygao on 16/9/16.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     //创建红色view
        let redv = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        redv.backgroundColor = UIColor.red
        view.addSubview(redv)
        //创建button
        let bu = UIButton(type:.contactAdd)
           //   bu.center = redv.center
        redv.addSubview(bu)

        bu.addTarget(self, action: #selector(buAction), for: .touchUpInside)
    }
//按钮的点击事件
    func buAction() -> Void {
        print("正在点击按钮")
    }
}

