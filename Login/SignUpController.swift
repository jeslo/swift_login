//
//  SignUpController.swift
//  Login
//
//  Created by Joe on 20/03/20.
//  Copyright © 2020 jess. All rights reserved.
//

import UIKit

class SignUpController: UIViewController {

//    @IBOutlet weak var password: UILabel!
    @IBOutlet weak var usernameTextbox: UITextField!
    //@IBOutlet var passwordLabel: UIView!
    @IBOutlet weak var passwordTextboc: UITextField!
    @IBOutlet weak var createButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()        
    }
    
    @IBAction func CreateSignup(_ sender: Any) {
        
        let details=UserDefaults.standard
        details.set(usernameTextbox.text, forKey: "name")
        details.set(passwordTextboc.text, forKey:"password")
        
    }
}
