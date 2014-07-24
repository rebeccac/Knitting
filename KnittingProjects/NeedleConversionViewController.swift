//
//  NeedleConversionViewController.swift
//  KnittingProjects
//
//  Created by Rebecca Cordingley on 9/07/2014.
//  Copyright (c) 2014 Rebecca Cordingley. All rights reserved.
//

import UIKit

class NeedleConversionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView
    var needlesArray = Array<Needle>()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setUpNeedlesArray()
    }
    
    // Create Needle objects & append to array
    func setUpNeedlesArray() {
        var needle1 = Needle(metricValue: "2.00mm", ukValue: "14", usValue: "0")
        var needle2 = Needle(metricValue: "2.25mm", ukValue: "13", usValue: "1")
        var needle3 = Needle(metricValue:"2.75mm", ukValue: "12", usValue: "2")
        var needle4 = Needle(metricValue:"3.00mm", ukValue: "11", usValue:"--")
        var needle5 = Needle(metricValue:"3.25mm", ukValue: "10", usValue:"3")
        var needle6 = Needle(metricValue:"3.50mm", ukValue: "--", usValue:"4")
        var needle7 = Needle(metricValue:"3.75mm", ukValue: "9", usValue:"5")
        var needle8 = Needle(metricValue:"4.00mm", ukValue: "8", usValue:"6")
        var needle9 = Needle(metricValue:"4.50mm", ukValue: "7", usValue:"7")
        var needle10 = Needle(metricValue:"5.00mm", ukValue: "6", usValue:"8")
        var needle11 = Needle(metricValue:"5.50mm", ukValue: "5", usValue:"9")
        var needle12 = Needle(metricValue:"6.00mm", ukValue: "4", usValue:"10")
        var needle13 = Needle(metricValue:"6.50mm", ukValue: "3", usValue:"10 1/2")
        var needle14 = Needle(metricValue:"7.00mm", ukValue: "2", usValue:"--")
        var needle15 = Needle(metricValue:"7.50mm", ukValue: "1", usValue:"--")
        var needle16 = Needle(metricValue:"8.00mm", ukValue: "0", usValue:"11")
        var needle17 = Needle(metricValue:"9.00mm", ukValue: "00", usValue:"13")
        var needle18 = Needle(metricValue:"10.00mm", ukValue: "000", usValue:"15")
        var needle19 = Needle(metricValue:"12.00mm", ukValue: "--", usValue:"17")
        var needle20 = Needle(metricValue:"15.00mm", ukValue: "--", usValue:"19")
        var needle21 = Needle(metricValue:"20.00mm", ukValue: "--", usValue:"35")
        var needle22 = Needle(metricValue:"25.00mm", ukValue: "--", usValue:"50")
        
        
        needlesArray.append(needle1)
        needlesArray.append(needle2)
        needlesArray.append(needle3)
        needlesArray.append(needle4)
        needlesArray.append(needle5)
        needlesArray.append(needle6)
        needlesArray.append(needle7)
        needlesArray.append(needle8)
        needlesArray.append(needle9)
        needlesArray.append(needle10)
        needlesArray.append(needle11)
        needlesArray.append(needle12)
        needlesArray.append(needle13)
        needlesArray.append(needle14)
        needlesArray.append(needle15)
        needlesArray.append(needle16)
        needlesArray.append(needle17)
        needlesArray.append(needle18)
        needlesArray.append(needle19)
        needlesArray.append(needle20)
        needlesArray.append(needle21)
        needlesArray.append(needle22)
        
    }

    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return needlesArray.count
    }
    
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let cell: CustomNeedleCell = tableView!.dequeueReusableCellWithIdentifier("NeedleCell") as CustomNeedleCell
        
        cell.textColor = UIColor.blackColor()
        
        // set needle to Needle object at indexPath.row
        var needle = needlesArray[indexPath.row]
        
        // call setCell() func in CustomNeedleCell class - sets values of UILabels
        cell.setCell(needle.metricValue, uk: needle.ukValue, us: needle.usValue)
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
