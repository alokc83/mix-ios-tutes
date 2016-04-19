//
//  RightMenuViewController.swift
//  SideBarProject
//
//  Created by Alok Choudhary on 4/6/16.
//  Copyright © 2016 Alok Choudhary. All rights reserved.
//

import UIKit

class RightMenuViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var titles = ["Home", "Devices", "Programs", "My Account", "System Settings", "Feedback", "Sign Out"]
    
    var sections = ["General", "Actions", "Others", "Legal"]
    
            //var images = ["IconHome", "IconCalendar", "IconProfile", "IconSettings", "IconProfile"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self 
        
        //tableview beautification settings 
        tableView.backgroundColor = UIColor.clearColor()
        tableView.separatorStyle = .None
        tableView.scrollsToTop = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension RightMenuViewController: UITableViewDataSource, UITableViewDelegate {
    //MARK: UItableView Delegate Method
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
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

        switch indexPath.section {
        case 0 :
            cell?.textLabel?.text = titles[indexPath.row]
        case 1:
            cell?.textLabel?.text = titles[indexPath.row]
        case 2:
            cell?.textLabel?.text = titles[indexPath.row]
        case 3:
            cell?.textLabel?.text = titles[indexPath.row]
        default:
            cell?.textLabel?.text = ""
        }
        
        //cell?.imageView?.image = UIImage(named: images[indexPath.row])
        return cell!
    }

}
