//
//  DetailViewController.swift
//  项目演练
//
//  Created by codygao on 16/9/18.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
   
    //姓名输入框
    @IBOutlet weak var nameFileld: UITextField!

    // 年龄输入框
    @IBOutlet weak var ageField: UITextField!
    //接受外界传来的数据，如果选择属性观察期，会晚，因为他需要在视图加载完成之后才会回调
    var person: Person?
    var closure: (()->())?
    
    //视图加载时就需要将数据传递过来
    override func viewDidLoad() {
        super.viewDidLoad()
        nameFileld.text = person?.name
        ageField.text = "\(person?.age ?? 0)"
        
    }
    
    
 
    @IBAction func saveButton(_ sender: AnyObject) {
        _ = navigationController?.popViewController(animated: true)
        //定义两个字符创接受文本框内容
        let name = nameFileld.text
        let age = ageField.text!
        
        //把修改后的文本框内容赋值给模型
        person?.name = name
        person?.age = Int(age)!
        //通知主页刷新界面
        closure?()
        
    }
    //编辑状态的
    @IBAction func editAction(_ sender: AnyObject) {
        navigationItem.rightBarButtonItem?.isEnabled = nameFileld.hasText && ageField.hasText
 
    }
    //这是结束标志
    }

   
