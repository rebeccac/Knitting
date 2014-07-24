//
//  YarnConversionViewController.swift
//  KnittingProjects
//
//  Created by Rebecca Cordingley on 8/07/2014.
//  Copyright (c) 2014 Rebecca Cordingley. All rights reserved.
//

import UIKit

class YarnConversionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var woolTableView: UITableView
    var woolArray = Array<Wool>()

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpNeedlesArray()
    }

    func setUpNeedlesArray() {
        var wool1 = Wool(ausValue: "2 ply", ukValue: "2 ply", usValue: "Lace")
        var wool2 = Wool(ausValue: "3 ply", ukValue: "3 ply", usValue: "Sock/Fingering")
        var wool3 = Wool(ausValue: "4 ply", ukValue: "4 ply", usValue: "Fingering")
        var wool4 = Wool(ausValue: "5 ply", ukValue: "Some DK", usValue: "Sport")
        var wool5 = Wool(ausValue: "8 ply", ukValue: "DK", usValue: "Light Worsted")
        var wool6 = Wool(ausValue: "10 ply", ukValue: "Aran", usValue: "Worsted")
        var wool7 = Wool(ausValue: "16 ply", ukValue: "Bulky", usValue: "Chunky")
        var wool8 = Wool(ausValue: "20 ply", ukValue: "Chunky", usValue: "Bulky")
        
        woolArray.append(wool1)
        woolArray.append(wool2)
        woolArray.append(wool3)
        woolArray.append(wool4)
        woolArray.append(wool5)
        woolArray.append(wool6)
        woolArray.append(wool7)
        woolArray.append(wool8)
    }
    
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return woolArray.count
    }
    
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let cell: CustomWoolCell = tableView!.dequeueReusableCellWithIdentifier("WoolCell") as CustomWoolCell
        
        cell.textColor = UIColor.blackColor()
        
        // set needle to Needle object at indexPath.row
        var wool = woolArray[indexPath.row]
        
        // call setCell() func in CustomNeedleCell class - sets values of UILabels
        cell.setCell(wool.ausValue, uk: wool.ukValue, us: wool.usValue)
        
        return cell
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
