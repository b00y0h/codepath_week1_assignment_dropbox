//
//  SignInViewController.swift
//  DropboxProto
//
//  Created by Bobby Smith on 2/1/16.
//  Copyright © 2016 Bobby Smith. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var signInBarBtn: UIBarButtonItem!
    @IBOutlet weak var signInTroubleButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    lazy var defaultSystemTintColor:UIColor? = {
        var view = UIView()
        return view.tintColor
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        passwordTextField.tintColor = defaultSystemTintColor
        emailTextField.tintColor = defaultSystemTintColor
        emailTextField.becomeFirstResponder()
    }

    @IBAction func showAlert() {
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .ActionSheet)

        
        let defaultAction = UIAlertAction(title: "Forgot Password", style: .Default) { (action:UIAlertAction!) in }
        alertController.addAction(defaultAction)
        
        let viewTermsAction = UIAlertAction(title: "Single Sign-On", style: .Default) { (action:UIAlertAction!) in }
        alertController.addAction(viewTermsAction)

        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action:UIAlertAction!) in }
        alertController.addAction(cancelAction)

        
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func pwChangedAction(sender: AnyObject) {
        var pwLength = passwordTextField.text!
        print(pwLength.characters.count)
        var pwCount = Int(pwLength.characters.count)
        
        switch pwCount {
        case 0...3:
            signInBarBtn.tintColor = UIColor.lightGrayColor()
        case 4...20:
            signInBarBtn.tintColor = defaultSystemTintColor
        default:
            signInBarBtn.tintColor = defaultSystemTintColor
        }
    }
}