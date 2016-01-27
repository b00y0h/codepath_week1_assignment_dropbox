//
//  CreateAccountViewController.swift
//  DropboxProto
//
//  Created by Bobby Smith on 1/26/16.
//  Copyright © 2016 Bobby Smith. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    
    @IBAction func showAlert() {
        let alertController = UIAlertController(title: "", message: "Before you can complete your registration, you must accept the Dropbox Terms of Service", preferredStyle: .ActionSheet)
        
        let defaultAction = UIAlertAction(title: "I Agree", style: .Default, handler: nil)
        alertController.addAction(defaultAction)
        
        let viewTermsAction = UIAlertAction(title: "View Terms", style: .Default) { action -> Void in
            self.performSegueWithIdentifier("viewtermsseque", sender: nil)
            
        }
        alertController.addAction(viewTermsAction)
        
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
