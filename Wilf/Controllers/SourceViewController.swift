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
        VideoHelper.startMediaBrowser(delegate: self, sourceType: .camera)

    }
    
}



// MARK: - UIImagePickerControllerDelegate
extension SourceViewController: UIImagePickerControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [String : Any]) {
        // 1
        guard
            let mediaType = info[UIImagePickerControllerMediaType] as? String,
            mediaType == (kUTTypeMovie as String),
            let url = info[UIImagePickerControllerMediaURL] as? URL
            else {
                return
        }
        
        // 2
        dismiss(animated: true) {
            //3

            let vc = LoadVideoViewController.getStoryboardInstance()
            vc.videoURl = url
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

}

// MARK: - UINavigationControllerDelegate
extension SourceViewController: UINavigationControllerDelegate {
    
}
