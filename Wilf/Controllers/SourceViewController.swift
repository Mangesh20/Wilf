//
//  ViewController.swift
//  Wilf
//
//  Created by Mangesh Tekale on 9/21/18.
//  Copyright © 2018 Mangesh. All rights reserved.
//

import UIKit
import AVKit
import MobileCoreServices

class SourceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playVideoFromDevice(_ sender: Any) {
        VideoHelper.startMediaBrowser(delegate: self, sourceType: .savedPhotosAlbum)

    }
    
    @IBAction func recordVideo(_ sender: Any) {
        
    }
    
}



// MARK: - UIImagePickerControllerDelegate
extension SourceViewController: UIImagePickerControllerDelegate {
}

// MARK: - UINavigationControllerDelegate
extension SourceViewController: UINavigationControllerDelegate {
}
