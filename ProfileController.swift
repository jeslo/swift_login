//
//  ProfileController.swift
//  Login
//
//  Created by Joe on 19/03/20.
//  Copyright © 2020 jess. All rights reserved.
//

import UIKit

class ProfileController: UIViewController {
    var name:String?
    var navigationTempArray = [Any]()
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var logout: UIButton!
    let imageURL:URL=URL(string: "https://image.shutterstock.com/image-photo/large-beautiful-drops-transparent-rain-600w-668593321.jpg")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        removeViewcontroller()
        let imageData:NSData = NSData(contentsOf: imageURL)!
        let image = UIImage(data: imageData as Data)
        profileImage.image = image
        self.nameLbl.text=name
        
    }
    
    func removeViewcontroller()
    {
       self.navigationController?.viewControllers.remove(at: 0)
    }
    
    @IBAction func logoutAction(_ sender: Any) {
        //var logoutArray=navigationTempArray
        //self.navigationController?.viewControllers=logoutArray
        
        let loginViewController=storyboard?.instantiateViewController(withIdentifier: "login")as! ViewController
        self.navigationController?.viewControllers=[loginViewController]
        //self.navigationController?.pushViewController(loginViewController,animated: true)
        
    }
}
