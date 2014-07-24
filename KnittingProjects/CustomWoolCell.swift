//
//  CustomWoolCell.swift
//  KnittingProjects
//
//  Created by Rebecca Cordingley on 24/07/2014.
//  Copyright (c) 2014 Rebecca Cordingley. All rights reserved.
//
// Custom UITableViewCell for YarnConversionViewController - prints Aus/NZ, UK & US wool weights

import UIKit

class CustomWoolCell: UITableViewCell {

    @IBOutlet var ausLabel: UILabel
    @IBOutlet var ukLabel: UILabel
    @IBOutlet var usLabel: UILabel
    
    init(style: UITableViewCellStyle, reuseIdentifier: String) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // Initialization code
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(aus:String, uk:String, us:String) {
        self.ausLabel.text = aus
        self.ukLabel.text = uk
        self.usLabel.text = us

    }

}
