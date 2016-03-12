//
//  GoatTableViewCell.swift
//  FindMyGoat
//
//  Created by Paviya Tojaroon on 3/5/16.
//  Copyright © 2016 Cornell App Dev. All rights reserved.
//

import UIKit

class GoatTableViewCell: UITableViewCell {
    
    var goat: Goat! {
        didSet(newValue) {
            updateUI()
        }
    }

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    func updateUI() {
        nameTextField.text = goat.name
        ageTextField.text = "\(goat.age)"
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
