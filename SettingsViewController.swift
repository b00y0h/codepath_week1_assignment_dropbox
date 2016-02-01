//
//  SettingsViewController.swift
//  DropboxProto
//
//  Created by Bobby Smith on 2/1/16.
//  Copyright © 2016 Bobby Smith. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var settingsImageView: UIImageView!
    @IBOutlet weak var settingsScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsScrollView.contentSize = settingsImageView.image!.size
    }
}
