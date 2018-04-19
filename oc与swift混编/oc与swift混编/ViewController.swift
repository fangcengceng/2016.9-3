//
//  ViewController.swift
//  oc与swift混编
//
//  Created by codygao on 16/9/20.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
      
        let ocvc = OCViewController()
        ocvc.ocdemo()
        
    }
   

    func swiftdemo()  {
        print("我是swift方法")
        
    }
    
    
    
    

}

