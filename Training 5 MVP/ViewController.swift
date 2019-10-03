//
//  ViewController.swift
//  Training 5 MVP
//
//  Created by yudha on 03/10/19.
//  Copyright © 2019 yudha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfNama: UITextField!
    var userPresenter : UserPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userPresenter = UserPresenter()
        userPresenter.userProtocol = self
    }

    @IBAction func btnLogin(_ sender: Any) {
        userPresenter.validateData(username: tfNama.text!, password: tfPassword.text!)
    }
    
}

extension ViewController : UserProtocol{
    func showMessage(message: String) {
        let alert  = UIAlertController(title: "Info", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func userSuccessLogin(userModel : UserModel) {
        print("Loggin \(userModel.loginData)")
        performSegue(withIdentifier: "homeSegue", sender: self)
    }
}

