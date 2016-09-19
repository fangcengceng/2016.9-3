//
//  PersonCell.swift
//  项目演练
//
//  Created by codygao on 16/9/18.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class PersonCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!

    //模型,相当于是懒加载
    var person:Person?{
        didSet {
            //属性观察器
           nameLabel.text = person?.name
          ageLabel.text = "\(person?.age ?? 0)"
            
        }
    }
    
    
    
}
