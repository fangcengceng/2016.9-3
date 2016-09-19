//
//  DetailViewController.swift
//  9.19项目演练
//
//  Created by codygao on 16/9/19.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    //

    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var ageField: UITextField!
    //定义回调闭包
    var closuer: (()->())?
    
    
    //定义一个person ,用来接收外界传来的值，不能再使用didSet方法，晚了
    
    var person: Person?
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.text = person?.name
        ageField.text = "\(person?.age ?? 0)"
        ageField.keyboardType = .asciiCapableNumberPad
        
     
        
   
    }


   //根据文本框内容，修改按钮的状态
    @IBAction func editAction(_ sender: AnyObject) {
        saveButton.isEnabled = nameField.hasText && ageField.hasText
    }

    //点击按钮的时候，需要pop ,通知主页进行刷新数据
    @IBAction func saveclickButton(_ sender: AnyObject) {
        
        //pop掉自己
      
        
        //定义两个常量保存文本框的内容
        let name = nameField.text
        let age = ageField.text
        
        //把常量的内容赋值给person
        person?.name = name
        person?.age =  Int("\(age)") ?? 0
        
        //通知主页刷新
        closuer?()
        
         _ = navigationController?.popViewController(animated: true)
        

    }
    
    
    
}
