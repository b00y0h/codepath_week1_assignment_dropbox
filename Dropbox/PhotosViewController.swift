//
//  PhotosViewController.swift
//  DropboxProto
//
//  Created by Bobby Smith on 2/1/16.
//  Copyright © 2016 Bobby Smith. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoScrollView.contentSize = photoImageView.image!.size
    }
}
