import UIKit

class ViewController: UITableViewController {
    
    
    //  记录请求的数据源
    var personList: [Person]?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData { (result) in
            
            // 获取数据
            self.personList = result
            
            // 刷新数据
            self.tableView.reloadData()
            
        }
        
        
        
    }
    //  @escaping表示逃逸,需要使用如果访问当前属性或者方法需要使用self指定所属者
    //  加载数据
    func loadData(callBack: @escaping ([Person])->()) {
        
        DispatchQueue.global().async {
            
            var tempArray = [Person]()
            //  准备数据
            for i in 0..<20 {
                //
                let name = "杨钰莹\(i)"
                //
                let age = 15 + Int(arc4random() % 16)
                let p = Person(dic: ["name": name, "age": age])
                tempArray.append(p)
            }
            
            DispatchQueue.main.async {
                //  回调主线程,执行闭包,回调数据
                callBack(tempArray)
            }
            
            
            
            
            
        }
        
        
        
    }
    
    
    
   //  extension 好比oc里面的分类, 可以给类扩展方法或者计算属性

    //  -- UITableViewDataSource 数据源代理方法
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //  ?? 注意判断前面可选类型是否为nil, 如果nil那么使用默认值0
        return personList?.count ?? 0
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "maincell", for: indexPath)
        //  !使用没有问题, 因为只有数组里面有数据才会执行这个函数
        cell.textLabel?.text = "kkk"
        return cell
        
    }
    
}

