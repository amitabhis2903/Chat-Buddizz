//
//  LoginWithEmailController.swift
//  Chat Buddizz
//
//  Created by Ammy Pandey on 03/09/17.
//  Copyright © 2017 Ammy Pandey. All rights reserved.
//

import UIKit
import Material
class LoginWithEmailController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginBtn: RaisedButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.emailField.applyPadding()
        self.passwordField.applyPadding()
        self.alingment()
        

    }
    func alingment(){
        //Mark: Email Text Field
        let x = self.view.bounds.width / 23.43
        let y = self.view.bounds.height / 3.22
        let width = self.view.bounds.width - x - x - x
        let height = self.view.bounds.height / 22.23
        emailField.frame = CGRect(x: x, y: y, width: width, height: height)
        emailField.placeholder = "Email"
        
        //Mark: Password Text Field
        let gapBetweenTextFields: CGFloat = 30.0
        let y_password = emailField.frame.origin.y + emailField.bounds.height + gapBetweenTextFields
        passwordField.frame = CGRect(x: x, y: y_password, width: width, height: height)
        passwordField.placeholder = "Password"
        
        //Mark: Button 
        let gap: CGFloat = 70.0
        let y_btn = passwordField.frame.origin.y + passwordField.bounds.height + gap
        loginBtn.frame = CGRect(x: self.view.bounds.width / 3.90, y: y_btn, width: self.view.bounds.width / 2.04, height: self.view.bounds.height / 22.33)
        loginBtn.backgroundColor = UIColor.blue
        loginBtn.tintColor = UIColor.white
    }
    
    @IBAction func login_clicked(_ sender: AnyObject) {
        let email = "test@gmail.com"
        let password = "123456"
        FirebaseManager.Login(email: email, password: password) { (success: Bool) in
            if (success){
                self.performSegue(withIdentifier: "login", sender: sender)
            }
        }
        
    }
    
    
    

}
extension UITextField {
    func applyPadding() {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 6, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = UITextFieldViewMode.always
    }
}
