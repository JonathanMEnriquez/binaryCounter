//
//  BinaryCell.swift
//  binaryCounter
//
//  Created by user on 1/22/18.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

protocol BinaryCellDelegate {
    func addToTotal(senderVal: Double)
    func removeFromTotal(senderVal: Double)
}

class BinaryCell: UITableViewCell {

    var delegate: BinaryCellDelegate?
    var myValue: Double?
    
    @IBOutlet var numberLabel: UILabel!
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        
        delegate?.addToTotal(senderVal: myValue!)
    }
    
    @IBAction func removeButtonPressed(_ sender: UIButton) {
        
        delegate?.removeFromTotal(senderVal: myValue!)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
