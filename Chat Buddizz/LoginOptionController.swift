//
//  LoginOptionController.swift
//  Chat Buddizz
//
//  Created by Ammy Pandey on 03/09/17.
//  Copyright © 2017 Ammy Pandey. All rights reserved.
//

import UIKit

class LoginOptionController: UIViewController {

    @IBOutlet weak var loginWithNumberBtn: UIButton!
    @IBOutlet weak var loginWithEmail: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let y: CGFloat = 10.0
        
      //  loginOptionImage.frame = CGRect(x: 0, y: self.view.bounds.height / 10.42, width: self.view.bounds.width / 1, height: self.view.bounds.height / 1.10)
        loginWithNumberBtn.frame = CGRect(x: self.view.bounds.width / 6.46, y: self.view.bounds.height / 2.09, width: self.view.bounds.width / 1.45, height: self.view.bounds.height / 22.23)
        let y_loginWithEmail = loginWithNumberBtn.frame.origin.y + loginWithNumberBtn.bounds.height + y
        loginWithEmail.frame = CGRect(x: self.view.bounds.width / 6.46, y: y_loginWithEmail, width: self.view.bounds.width / 1.45, height: self.view.bounds.height / 22.23)
    }

   
}
