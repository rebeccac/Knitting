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
        
        needlesArray.append(needle1)
        needlesArray.append(needle2)
        needlesArray.append(needle3)
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
