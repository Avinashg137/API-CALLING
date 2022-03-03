//
//  Model.swift
//  API CALLING
//
//  Created by MAC OS on 02/03/22.
//

import Foundation

class Model : Codable {
    var id:Int?
    var userId: Int?
    var title:String?
    
    init(data:[String:Any]) {
        if let id = data["id"] {
            self.id = id as? Int
            
        }
        if let userId = data["userId"] {
            self.userId = userId as? Int
        }
        if let title = data["title"] {
            self.title = title as? String
        }
        
    }
}
