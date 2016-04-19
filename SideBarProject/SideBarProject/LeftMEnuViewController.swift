//
//  LeftMEnuViewController.swift
//  SideBarProject
//
//  Created by Alok Choudhary on 4/6/16.
//  Copyright © 2016 Alok Choudhary. All rights reserved.
//

import UIKit

class LeftMEnuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tableView = UITableView(frame: CGRectMake(0, self.view.frame.size.height, self.view.frame.size.width, 54*5), style: UITableViewStyle.Plain)
        //tableView.autoresizingMask = UIViewAutoresizing.FlexibleTopMargin | UIViewAutoresizing.FlexibleBottomMargin | UIViewAutoresizing.FlexibleWidth
        tableView.delegate = self
        tableView.dataSource = self
        tableView.opaque = false
        tableView.backgroundColor = UIColor.clearColor()
        tableView.backgroundView = nil
        tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        tableView.bounces = true
        tableView.scrollsToTop = false
        
        self.view.addSubview(tableView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

//MARK: UItableView Delegate Method
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //
        let cellIdentifier = "menuCell"
        var cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier)
        
        if(cell == nil){
            cell = UITableViewCell.init(style: .Default, reuseIdentifier: cellIdentifier)
            cell?.backgroundColor = UIColor.clearColor()
            //cell?.textLabel?.font = UIFont.fontNamesForFamilyName("HelveticaNeue")
            cell?.textLabel?.textColor = UIColor.blackColor()
            cell?.textLabel?.highlightedTextColor = UIColor.whiteColor()
            cell?.backgroundView = UIView()
        }
        
    var titles = ["Home", "Calendar", "Profile", "Settings", "Log Out"]
    //var images = ["IconHome", "IconCalendar", "IconProfile", "IconSettings", "IconProfile"]
        
    cell?.textLabel?.text = titles[indexPath.row]
    //cell?.imageView?.image = UIImage(named: images[indexPath.row])
       return cell!
    }

}


extension RESideMenuDelegate {
    
}
