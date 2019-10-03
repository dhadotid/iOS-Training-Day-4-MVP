//
//  UserModel.swift
//  Training 5 MVP
//
//  Created by yudha on 03/10/19.
//  Copyright © 2019 yudha. All rights reserved.
//

import Foundation

class UserModel {
    
    var name: String
    var password: String
    
    lazy var loginData: String = {
        return "Hello, \(self.name)!"
    }()
    
    init(name: String, password: String) {
        self.name = name
        self.password = password
    }
}
