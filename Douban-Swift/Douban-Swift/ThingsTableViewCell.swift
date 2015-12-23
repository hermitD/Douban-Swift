//
//  ThingsTableViewCell.swift
//  Douban-Swift
//
//  Created by Doye on 15/12/23.
//  Copyright © 2015年 d0ye. All rights reserved.
//

import UIKit

class ThingsTableViewCell: UITableViewCell {

    @IBOutlet weak var peopleImageView: UIImageView!
    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var fromLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var contentImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //self.bounds.width = self.superview?.bounds.width
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
