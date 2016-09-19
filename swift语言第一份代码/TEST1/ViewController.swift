//
//  ViewController.swift
//  TEST1
//
//  Created by codygao on 16/9/16.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      let redv = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        view.addSubview(redv)
        redv.backgroundColor = UIColor.yellow
        let button = UIButton(type: .contactAdd)
        redv.addSubview(button)
        button.addTarget(self, action: #selector(buAction), for:.touchUpInside)
}
    
func buAction()  {
        print("-------")
        print("swift创建views")
        print("-------")
        
    }
}
