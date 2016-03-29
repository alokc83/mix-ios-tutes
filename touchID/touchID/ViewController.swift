//
//  ViewController.swift
//  touchID
//
//  Created by Alok Choudhary on 3/21/16.
//  Copyright © 2016 Alok Choudhary. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    @IBOutlet weak var logoutButton: UIButton!
    @IBOutlet weak var touchButton: UIButton!
    @IBAction func touchButtonTapped(sender: UIButton) {
        let context = LAContext()
        
        if(context.canEvaluatePolicy(.DeviceOwnerAuthenticationWithBiometrics, error: nil)){
            context.evaluatePolicy(.DeviceOwnerAuthenticationWithBiometrics, localizedReason: "Do you want to log in with touchID", reply: { (success, error) -> Void in
                if(error == nil){
                    print("logged in successfully")
                    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), {
                        dispatch_async(dispatch_get_main_queue()) {
                            self.touchButton.tintColor = UIColor.greenColor()
                            self.touchButton.titleLabel?.text = "Logged in"
                            self.touchButton.enabled = false
                            self.logoutButton.enabled = true
                            self.logoutButton.tintColor = UIColor.redColor()
                        }
                    })
                    
                    
                } else {
                    print("error in authentication")
                }
            })
        }else {
            let alert = UIAlertController(title: "TouchID Not Found !!!", message: "This Device doesn't have touchID", preferredStyle: .Alert)
            let okAction = UIAlertAction(title: "Ok", style: .Cancel, handler: { (okAction) -> Void in
                //
            })
            
            alert.addAction(okAction)
            self.presentViewController(alert, animated: true, completion: { () -> Void in
                //No touch ID
            })
           
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func logoutButtonTapped(sender: UIButton) {
        dispatch_async(dispatch_get_main_queue()) {
            self.touchButton.enabled = true
            self.logoutButton.enabled = false
            
        }
        
    }
}

