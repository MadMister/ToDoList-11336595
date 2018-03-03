//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Jan Marten Sevenster on 02/03/2018.
//  Copyright © 2018 John Appleseed. All rights reserved.
//

import UIKit

@objc protocol ToDoCellDelegate: class {
    func checkmarkTapped(sender: ToDoCell)
}

class ToDoCell: UITableViewCell {
    var delegate: ToDoCellDelegate?
    
    @IBOutlet weak var isCompleteButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func isCompleteButtonPressed(_ sender: UIButton) {
        delegate?.checkmarkTapped(sender: self)
    }
    
}
