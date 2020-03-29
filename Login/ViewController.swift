//
//  ViewController.swift
//  Login
//
//  Created by Joe on 19/03/20.
//  Copyright © 2020 jess. All rights reserved.
//

import UIKit

func validate (lhs: String, type: String) -> Bool {
    let pattern = type == "userId" ? "[a-z,A_Z]" : "[0-9]{5,10}"
        guard let regex = try? NSRegularExpression(pattern: pattern) else { return false }
        let range = NSRange(location: 0, length: lhs.count)
        return regex.firstMatch(in: lhs, options: [], range: range) != nil
    }

class ViewController: UIViewController, UITextFieldDelegate
{
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var passwordTxt:UITextField!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var usrnameTxt: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTxt.delegate=self
        usrnameTxt.delegate=self
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        changeColor(field: textField, valid: true)
    }
    
    func changeColor (field:UITextField, valid: Bool) {
        let color = valid == true ? UIColor.black.cgColor : UIColor.red.cgColor
        field.layer.borderWidth = 1
        field.layer.borderColor = color
    }

    @IBAction func loginAction(_ sender: Any) {
        
        if(validate(lhs: usrnameTxt.text ?? "", type: "userId")){
            self.changeColor(field: usrnameTxt, valid: true)
        } else {
         self.changeColor(field: usrnameTxt, valid: false)
        }
        
        if(validate(lhs: passwordTxt.text ?? "", type: "password")){
            self.changeColor(field: passwordTxt, valid: true)
        } else{
            self.changeColor(field: passwordTxt, valid: false)
        }
        
    }
    
    @IBAction func signUPAction(_ sender: Any) {
        let signupViewController = storyboard?.instantiateViewController(withIdentifier: "signup")as! SignUpController
        self.navigationController?.pushViewController(signupViewController,animated: true)
        
    }
    
}

