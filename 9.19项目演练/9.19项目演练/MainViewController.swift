//
//  MainViewController.swift
//  9.19项目演练
//
//  Created by codygao on 16/9/19.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {

    var personList: [Person]?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.separatorStyle = .none
        //回调loadData
        loadData { (result) in
           self.personList = result
            self.tableView.reloadData()
        }
    }

    //加载数据
    func loadData(callback:@escaping (([Person])->())){
        //在子线程中加载数据
        DispatchQueue.global().async {
          var tempArr = [Person]()
            for i in 0..<20{
               let name = "香茗\(i)"
               let age = 10 + Int(arc4random() % 20)
            
               let p = Person(dic:["name":name,"age":age])
            
                tempArr.append(p)
            }
            
            //回调主线程
            DispatchQueue.main.async {
              callback(tempArr)
            }
            
        }
        
        
        
    }
   
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        return personList?.count ?? 0
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "maincell", for: indexPath) as! PersonTableViewCell
        cell.person = personList![indexPath.row]
        return cell
    }
   
   //显示第二个控制器
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      //获取详情控制器
        let vc = segue.destination as? DetailViewController
        guard let detailvc = vc else {
            return
        }
        
        let selectIndex = tableView.indexPathForSelectedRow
        
        detailvc.person = personList?[(selectIndex?.row)!]
        //执行回调闭包
        detailvc.closuer = {
            self.tableView.reloadData()
        }
        
 
    }
    
    
    
}
