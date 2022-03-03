//
//  ViewController.swift
//  API CALLING
//
//  Created by MAC OS on 02/03/22.
//

import UIKit
import Alamofire

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var arr : [Model] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
        
        
        AF.request("https://jsonplaceholder.typicode.com/albums", method: .get, parameters: nil, headers: nil, interceptor: nil, requestModifier: nil)
            .response { response in
                switch response.result {
                case .success(_) :
                    guard let data = response.data else {return}
                    
                    do {
                        let json = try JSONSerialization.jsonObject(with: data, options: [])
                       
                        for jsondata in json as! [[String:Any]] {
                            self.arr.append(Model(data: jsondata ))
                        }
                        self.tableView.reloadData()
                        print(self.arr)
                        
                    }catch {
                        print(error.localizedDescription)
                    }
                    
                    
                case .failure(_) :
                    break
                }
            }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arr.count
            
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
            cell.lblTitle.text = arr[indexPath.row].title
           // let cellid = String(arr[indexPath.row].id)
          //  cell.lblId.text = cellid
           // cell.lblUserId.text = arr[indexPath.row].userId as? String
            return cell
        }
    
}

