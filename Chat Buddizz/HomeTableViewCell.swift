//
//  HomeTableViewCell.swift
//  Chat Buddizz
//
//  Created by Ammy Pandey on 03/09/17.
//  Copyright © 2017 Ammy Pandey. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    
    @IBOutlet weak var friendsImg: UIImageView!
    @IBOutlet weak var friendsName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
