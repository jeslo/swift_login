//
//  ViewController.swift
//  Login
//
//  Created by Joe on 19/03/20.
//  Copyright © 2020 jess. All rights reserved.
//

import UIKit
class ViewController: UIViewController{
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var passwordTxt:UITextField!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var usrnameTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.usrnameTxt.text = "jeslo"
        self.passwordTxt.text = "mathew"
        
    }
    
    @IBAction func loginAction(_ sender: Any) {
        
        //let details=UserDefaults.standard
        //details.set(usrnameTxt.text,forKey: "usrname")
        //details.set(passwordTxt.text, forKey: "password")
        
        if usrnameTxt.text=="jeslo" && passwordTxt.text=="mathew" {
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

