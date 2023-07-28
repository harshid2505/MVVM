//
//  APIHalper.swift
//  MVVM
//
//  Created by HARSHID PATEL on 22/07/23.
//

import Foundation
import UIKit
import Alamofire

class APIalper: NSObject{
    private let link = URL(string: "https://jsonplaceholder.typicode.com/photos")!
    
    func getData(apiData:@escaping(([Employee])->())){
        AF.request(link,method: .get).response { respo in
            switch respo.result{
            case.success(let data):
                do{
                    var arr = [Employee]()
                    arr = try JSONDecoder().decode([Employee].self, from: data!)
//                    print(arr)
                    apiData(arr)
                }
                catch{
                    print(error.localizedDescription)
                }
            case.failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

