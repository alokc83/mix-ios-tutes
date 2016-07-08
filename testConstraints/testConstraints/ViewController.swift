//
//  ViewController.swift
//  testConstraints
//
//  Created by Alok Choudhary on 4/15/16.
//  Copyright © 2016 Alok Choudhary. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var grayView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let button = UIButton()
        grayView.addSubview(button)
        button.backgroundColor = UIColor.redColor()
        let dict = ["button":button]
        let hConstriant = NSLayoutConstraint.constraintsWithVisualFormat("H:|-[button]-|", options: NSLayoutFormatOptions.DirectionLeadingToTrailing, metrics: nil, views: dict)
        button.translatesAutoresizingMaskIntoConstraints = false
        grayView.addConstraints(hConstriant)
        
        let topConstraint = NSLayoutConstraint(item: button, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: grayView, attribute: NSLayoutAttribute.TopMargin, multiplier: 1, constant: 20)
        grayView.addConstraint(topConstraint)
        
        
        //button height constraints 
        let heightConstraint = NSLayoutConstraint(item: button, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 100)
        button.addConstraint(heightConstraint)
        //NSLayoutConstraint.activateConstraints([topConstraint, widthConstraint])
        
        button.layoutIfNeeded()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



