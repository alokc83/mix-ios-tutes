//
//  RootViewController.swift
//  SideBarProject
//
//  Created by Alok Choudhary on 4/5/16.
//  Copyright © 2016 Alok Choudhary. All rights reserved.
//

import UIKit

class RootViewController: RESideMenu, RESideMenuDelegate {
    override func awakeFromNib() {
        self.menuPreferredStatusBarStyle = UIStatusBarStyle.LightContent
        self.contentViewShadowColor = UIColor.blackColor()
        self.contentViewShadowOffset = CGSizeMake(0, 0)
        self.contentViewShadowOpacity = 0.6
        self.contentViewShadowRadius = 12
        self.contentViewShadowEnabled = true
        
        self.contentViewController = self.storyboard?.instantiateViewControllerWithIdentifier("contentViewController")
        self.leftMenuViewController = nil
        self.rightMenuViewController = self.storyboard?.instantiateViewControllerWithIdentifier("rightMenuViewController")
        self.backgroundImage = UIImage(named: "stars")
        self.delegate = self
    }
    
    
    //MARK: -
    //MARK: RESideMenu Delegate
    func sideMenu(sideMenu: RESideMenu!, didHideMenuViewController menuViewController: UIViewController!) {
        //
    }
    
    func sideMenu(sideMenu: RESideMenu!, willShowMenuViewController menuViewController: UIViewController!) {
        //
    }
    
    func sideMenu(sideMenu: RESideMenu!, didShowMenuViewController menuViewController: UIViewController!) {
        //
    }
    
    func sideMenu(sideMenu: RESideMenu!, willHideMenuViewController menuViewController: UIViewController!) {
        //
    }
    
    func sideMenu(sideMenu: RESideMenu!, didRecognizePanGesture recognizer: UIPanGestureRecognizer!) {
        //
    }

}
