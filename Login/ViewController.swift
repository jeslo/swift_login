//
//  ViewController.swift
//  Login
//
//  Created by Joe on 19/03/20.
//  Copyright © 2020 jess. All rights reserved.
//

import UIKit

func validate (lhs: String, rhs: String) -> Bool {
        guard let regex = try? NSRegularExpression(pattern: rhs) else { return false }
        let range = NSRange(location: 0, length: lhs.utf16.count)
        return regex.firstMatch(in: lhs, options: [], range: range) != nil
    }

class ViewController: UIViewController{
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var passwordTxt:UITextField!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var usrnameTxt: UITextField!
    
    let validitytype: String.ValidityType = .username
    var usrnamepattern :String="[a-z]{3,8}"
    var passwordpattern :String="[0-9]{5,10}"
    let colornotok = UIColor.red
    let colorok = UIColor.white
    
    var textField: UITextField {
        let tf = UITextField()
        tf.addTarget(self, action: #selector(validating), for: .editingChanged)
        return tf
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //Validornot()
        
    }
    @objc fileprivate func validating()
    {
        if textField.restorationIdentifier == "usrname"
        {
            
            if validate(lhs: validitytype, rhs: usrnamepattern)
            {
                
                usrnameTxt.layer.borderColor = colorok.cgColor
            }
            else{
                usrnameTxt.layer.borderColor = colornotok.cgColor
            }
        }
            
        else if textField.restorationIdentifier == "passwrd"
        {
            if validate(lhs: passwordTxt.text!, rhs: passwordpattern)
            {
                passwordTxt.layer.borderColor = colorok.cgColor
            }
            else{
                passwordTxt.layer.borderColor = colornotok.cgColor
            }
        }
        else{
            print("kunna")
        }
    }
    @IBAction func loginAction(_ sender: Any) {
        
        //let details=UserDefaults.standard
        //details.set(usrnameTxt.text,forKey: "usrname")
        //details.set(passwordTxt.text, forKey: "password")
        if usrnameTxt.text=="jeslo" && passwordTxt.text=="994718"
        {
            
            let profileViewController=storyboard?.instantiateViewController(withIdentifier: "profile")as! ProfileController
            self.navigationController?.pushViewController(profileViewController,animated: true)
            profileViewController.name="jeslo"
        }
        else
        {
            let alert = UIAlertController(title: "Login Failed", message: "Please enter valid username and password", preferredStyle: UIAlertController.Style.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func signUPAction(_ sender: Any) {
        let signupViewController = storyboard?.instantiateViewController(withIdentifier: "signup")as! SignUpController
        self.navigationController?.pushViewController(signupViewController,animated: true)
        
    }
    
}

