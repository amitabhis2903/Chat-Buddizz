//
//  HomeViewController.swift
//  Chat Buddizz
//
//  Created by Ammy Pandey on 03/09/17.
//  Copyright © 2017 Ammy Pandey. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

   
    @IBOutlet weak var homeTable: UITableView!
    @IBOutlet weak var search: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeTable.delegate = self
        homeTable.dataSource = self
        //Mark: Alingment of UI Elements
//        search.frame = CGRect(x: 0, y: self.view.bounds.height / 10.57, width: self.view.bounds.width / 1, height: self.view.bounds.height / 15.38)
//        homeTable.frame = CGRect(x: 0, y: self.view.bounds.height / 6.17, width: self.view.bounds.width / 1, height: self.view.bounds.height / 1.932)
//        

        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! HomeTableViewCell
        return cell
    }
}
