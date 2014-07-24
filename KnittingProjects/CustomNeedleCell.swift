//
//  CustomNeedleCell.swift
//  KnittingProjects
//
//  Created by Rebecca Cordingley on 24/07/2014.
//  Copyright (c) 2014 Rebecca Cordingley. All rights reserved.
//
// Custom UITableViewCell for NeedleConversionViewController - prints metric, UK & US needle sizes

import UIKit

class CustomNeedleCell: UITableViewCell {

    @IBOutlet var metricLabel: UILabel
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
    
    // set each cell's label values
    func setCell(metric:String, uk:String, us:String) {
        self.metricLabel.text = metric
        self.ukLabel.text = uk
        self.usLabel.text = us
    }

}
