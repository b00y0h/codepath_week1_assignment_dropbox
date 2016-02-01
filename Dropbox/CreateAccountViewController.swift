//
//  CreateAccountViewController.swift
//  DropboxProto
//
//  Created by Bobby Smith on 1/26/16.
//  Copyright © 2016 Bobby Smith. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var weakPasswordIndicator: UIImageView!
    @IBOutlet weak var sosoPasswordIndicator: UIImageView!
    @IBOutlet weak var goodPasswordIndicator: UIImageView!
    @IBOutlet weak var greatPasswordIndicator: UIImageView!
    
    @IBOutlet weak var createNavButton: UIBarButtonItem!
    
    
    lazy var defaultSystemTintColor:UIColor? = {
        var view = UIView()
        return view.tintColor
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.weakPasswordIndicator?.hidden = true
        self.sosoPasswordIndicator?.hidden = true
        self.goodPasswordIndicator?.hidden = true
        self.greatPasswordIndicator?.hidden = true
    }
    

    
    @IBAction func showAlert() {
        let alertController = UIAlertController(title: "", message: "Before you can complete your registration, you must accept the Dropbox Terms of Service", preferredStyle: .ActionSheet)
        
        let defaultAction = UIAlertAction(title: "I Agree", style: .Default) { action -> Void in
            self.performSegueWithIdentifier("newBlankAccountSeque", sender: nil)
        }

        alertController.addAction(defaultAction)
        
        let viewTermsAction = UIAlertAction(title: "View Terms", style: .Default) { action -> Void in
            self.performSegueWithIdentifier("viewtermsseque", sender: nil)
            
        }
        alertController.addAction(viewTermsAction)
        
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func passwordChanged(sender: AnyObject) {
        var pwLength = passwordTextField.text!
        print(pwLength.characters.count)
        var pwCount = Int(pwLength.characters.count)
        
        switch pwCount {
        case 1...3:
            self.weakPasswordIndicator.hidden = false
            self.sosoPasswordIndicator.hidden = true
            self.goodPasswordIndicator.hidden = true
            self.greatPasswordIndicator.hidden = true
            createNavButton.tintColor = UIColor.lightGrayColor()
        case 4...6:
            self.weakPasswordIndicator.hidden = true
            self.sosoPasswordIndicator.hidden = false
            self.goodPasswordIndicator.hidden = true
            self.greatPasswordIndicator.hidden = true
            createNavButton.tintColor = defaultSystemTintColor
        case 7...9:
            self.weakPasswordIndicator.hidden = true
            self.sosoPasswordIndicator.hidden = true
            self.goodPasswordIndicator.hidden = false
            self.greatPasswordIndicator.hidden = true
            createNavButton.tintColor = defaultSystemTintColor
        case 10...20:
            self.weakPasswordIndicator.hidden = true
            self.sosoPasswordIndicator.hidden = true
            self.goodPasswordIndicator.hidden = true
            self.greatPasswordIndicator.hidden = false
            createNavButton.tintColor = defaultSystemTintColor
        default:
            self.weakPasswordIndicator.hidden = true
            self.sosoPasswordIndicator.hidden = true
            self.goodPasswordIndicator.hidden = true
            self.greatPasswordIndicator.hidden = true

        }
        
    }
    
}
