//
//  ViewController.swift
//  项目演练
//
//  Created by codygao on 16/9/18.
//  Copyright © 2016年 HM. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

   //定义一个全局的数组
    var personlist: [Person]?
    override func viewDidLoad() {
        super.viewDidLoad()
        let closure = { (result: [Person])->() in
            print(result)
        }
        //调用尾随闭包，在尾随闭包里面刷新界面
        loadData(callback: closure)
        self.tableView.reloadData()
    }

    //加载数据的主方法
    func loadData(callback:@escaping([Person])->()){
        var tempArr = [Person]()
        //在子线程加载数据
        DispatchQueue.global().async {
          
            for i in 0..<20{
                let name = "姓名\(i)"
                let age = 16 + Int( arc4random()%20)
                let p = Person(dic: ["name":name,"age":age])
                tempArr.append(p)
            }
              self.personlist = tempArr
        }
    }
    
    //MARK:加载数据源方法
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return personlist?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "maincell", for: indexPath) as! PersonCell
       //强制解包
        cell.person = personlist![indexPath.row]
        
        return cell
    }
    //执行跳转操作
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //必须reloadData 否则数据加载不上来

        let vc = segue.destination as? DetailViewController
        //控制流
        guard let de = vc else {
            return
        }
        //保证选中的cell
        guard let selectedIndex = tableView.indexPathForSelectedRow else {
           return
        }
        //数据传递
        de.person = personlist?[selectedIndex.row]
        //设置闭包
        de.closure = {
            self.tableView.reloadData()
        }
        
        
        
        
    }
//
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//       
//        let vc = DetailViewController()
//        vc.person = personlist?[indexPath.row]
//        
//        
//    }
    
    //这是结束标志
}

