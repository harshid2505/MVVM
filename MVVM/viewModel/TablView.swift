//
//  TablView.swift
//  MVVM
//
//  Created by HARSHID PATEL on 21/07/23.
//

import Foundation
import UIKit

class EmployeeViewModel: NSObject{
    var arr = [Employee]()
    var abc : (()->())?
    
    func callApi(){
        APIalper().getData(apiData: specialFunction)
    }
    
    func specialFunction(data:[Employee]){
        arr = data
        abc?()
    }
    
}

extension EmployeeViewModel: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell1
        cell.titleLable.text = arr[indexPath.row].title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}
