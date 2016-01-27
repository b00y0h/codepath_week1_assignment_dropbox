//
//  TermsViewController.swift
//  DropboxProto
//
//  Created by Bobby Smith on 1/26/16.
//  Copyright © 2016 Bobby Smith. All rights reserved.
//

import UIKit

class TermsViewController: UINavigationController {
    @IBAction func done(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
