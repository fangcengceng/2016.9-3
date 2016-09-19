//
//  DetailViewController.swift
//  9.19项目演练一
//
//  Created by codygao on 16/9/19.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
 
    var closure: (()->())?
    var person: Person?
    
    @IBOutlet weak var ageLabel: UITextField!
    @IBOutlet weak var nameLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ageLabel.text = "\(person?.age ?? 0)"
        nameLabel.text = person?.name

    }

    
    @IBAction func nameChange(_ sender: AnyObject) {
        
        self.navigationItem.rightBarButtonItem?.isEnabled = nameLabel.hasText && ageLabel.hasText
    }
  
    @IBAction func saveAction(_ sender: AnyObject) {
        //接受传进来的值，
        let name = self.nameLabel.text
        let  age = self.ageLabel.text
        
        person?.age = Int ("\(age)") ?? 0
        person?.name = name
        
        //通知主页刷新界面
        closure!()
        
        
        
        
    }
}
