//
//  FirebaseManager.swift
//  Chat Buddizz
//
//  Created by Ammy Pandey on 07/09/17.
//  Copyright © 2017 Ammy Pandey. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseAuth

class FirebaseManager: NSObject {

    //Mark: Refrence of Database 
    static let databaseref = Database.database().reference()
    static var currentUserId: String = ""
    static var currentUser: User? = nil
    
    //Mark : Function for use to Log on
    static func Login(email:String, password:String, completion:@escaping (_ success: Bool) -> Void) {
        
        Auth.auth().signIn(withEmail: email, password: password, completion: { (user, error) in
            if let error = error {
                print(error.localizedDescription)
                completion(false)
            }else {
                currentUser = user
                currentUserId = (user?.uid)!
                completion(true) }
        })
    }
    
    
}
