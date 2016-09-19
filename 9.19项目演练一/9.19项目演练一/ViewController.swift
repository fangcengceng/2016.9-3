//
//  ViewController.swift
//  9.19项目演练一
//
//  Created by codygao on 16/9/19.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{

    var personList: [Person]?
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
      tableView.dataSource = self
        tableView.delegate = self
        //执行闭包
        loadData(){ (result) in
            
            self.personList = result
            //需要刷新UI
            self.tableView.reloadData()
            
        }
//
//        
    }
//
//    //加载数据，callback相当于定义闭包,外部调用的话，必须是逃逸闭包
    func loadData(callback: @escaping ([Person])->()){
        
        var tempArr = [Person]()
        DispatchQueue.global().async {
//            操作数据
            for i in 0...30{
                let name = "香菜\(i)"
                let age = 19 + Int(arc4random() % 20)
                let p = Person(dic: ["name":name,"age":age])
                //为数组添加元素
            tempArr.append(p)
                DispatchQueue.main.async {
                   //在此刻回调函数
                    callback(tempArr)
                }
        }

    }
    }
    //实现数据源方法
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return  personList?.count ?? 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "maincell", for: indexPath) as! PersonTableViewCell
   
        cell.person = personList?[indexPath.row]
        
        return cell
       
    }
    //选中某一行
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()
         _ = navigationController?.pushViewController(vc, animated: true)
        vc.person = personList?[indexPath.row]
       print(personList?[indexPath.row])
        print(indexPath.row)
        vc.closure = {
            self.tableView.reloadData()
        }
       
        
        
        
    }
    
//这是结束标志
}
