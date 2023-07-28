//
//  ViewController.swift
//  MVVM
//
//  Created by HARSHID PATEL on 21/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var employeeDataTableView: UITableView!
    
    var a = EmployeeViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        a.callApi()
        employeeDataTableView.dataSource = a
        employeeDataTableView.delegate = a
        a.abc = {
            self.employeeDataTableView.reloadData()
        }
    }


}

