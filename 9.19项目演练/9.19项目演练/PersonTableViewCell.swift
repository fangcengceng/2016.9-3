//
//  PersonTableViewCell.swift
//  9.19项目演练
//
//  Created by codygao on 16/9/19.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit



class PersonTableViewCell: UITableViewCell {
    @IBOutlet weak var ageLabel: UILabel!

    @IBOutlet weak var nameLabel: UILabel!
   
    //设定观察器，接受外界传来的值
    var person: Person? {
        didSet{
           ageLabel.text = "\(person?.age ?? 0)"
           nameLabel.text = person?.name
            
        }
    }
   
}
