//
//  PostManager.swift
//  Chat Buddizz
//
//  Created by Ammy Pandey on 07/09/17.
//  Copyright © 2017 Ammy Pandey. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseAuth

class PostManager: NSObject {

    //Mark: Few Refrences
    //Database refrences
    static let databaseRef = Database.database().reference()
    
    //Mark: For Post
    static var posts = [Post]()
    
    //Mark: Fill Post Method
    static func fillPosts(uid: String?, toId: String, completion: @escaping(_ result: String) -> Void) {
        posts = []
        let allPost = databaseRef.child("Posts")
        print(allPost)
        let post = databaseRef.child("Posts").queryOrdered(byChild: "uid").queryEqual(toValue: FirebaseManager.currentUser?.uid).observe(.childAdded, with: {
            snapshot in
            print(snapshot)
        })
        
        //Mark: Create Post Instances
        databaseRef.child("Posts").queryOrdered(byChild: "uid").queryEqual(toValue: FirebaseManager.currentUser?.uid).observe(.childAdded, with: {
            snapshot in
            print(snapshot)
            if let result = snapshot.value as? [String: AnyObject]{
                let toIdFirebase = result["toId"] as! String
                if toIdFirebase == toId {
                    let p = Post(username: result["username"]! as! String, text: result["text"]! as! String, toId: result["toId"]! as! String)
                    PostManager.posts.append(p)
                }
            }
            completion("")
        })
    }
}

//Mark: Create Post
class Post {
    // Mark: Properties or Instances of Post
    var username: String = ""
    var text: String = ""
    var toId: String = ""
    
    //Mark: Intialise them
    init(username: String, text: String, toId: String) {
        self.username = username
        self.text = text
        self.toId = toId
    }
}
