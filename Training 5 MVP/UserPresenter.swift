//
//  UserPresenter.swift
//  Training 5 MVP
//
//  Created by yudha on 03/10/19.
//  Copyright © 2019 yudha. All rights reserved.
//

import Foundation

class UserPresenter : NSObject{
    
    var userModel: UserModel!
    var userProtocol: UserProtocol!
    
    func validateData(username: String, password: String){
        if username.count != 0, password.count != 0 {
            login(username: username, password: password)
        }else if username.count == 0{
            userProtocol.showMessage(message: "Username tidak boleh kosong")
        }else{
            userProtocol.showMessage(message: "Password tidak boleh kosong")
        }
    }
    
    func login(username: String, password: String){
        if username == "test", password == "123"{
            userModel = UserModel(name: username, password: password)
            userProtocol.userSuccessLogin(userModel: userModel)
        }else{
            userProtocol.showMessage(message: "Login Failed")
        }
    }
}
