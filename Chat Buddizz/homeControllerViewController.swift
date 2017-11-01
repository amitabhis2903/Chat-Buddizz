//
//  homeControllerViewController.swift
//  Chat Buddizz
//
//  Created by Ammy Pandey on 03/09/17.
//  Copyright © 2017 Ammy Pandey. All rights reserved.
//

import UIKit

class homeControllerViewController: UIViewController {

    @IBOutlet weak var homeImage: homeScreen!
    @IBOutlet weak var getStartedbtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        homeImage.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width / 1, height: self.view.bounds.height / 1)
        homeImage.image = UIImage(named: "home.png")
        getStartedbtn.frame = CGRect(x: self.view.bounds.width / 4.21, y: self.view.bounds.height / 2.1, width: self.view.bounds.width / 1.90, height: self.view.bounds.height / 22.23)
        
    }

   
}
