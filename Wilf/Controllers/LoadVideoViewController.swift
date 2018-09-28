//
//  LoadVideoViewController.swift
//  Wilf
//
//  Created by Mangesh Tekale on 9/21/18.
//  Copyright © 2018 Mangesh. All rights reserved.
//

import UIKit
import AVKit
import MobileCoreServices


class LoadVideoViewController: UIViewController {

    var videoURl: URL!
    var vcLoadVideo: AVPlayerViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    static func getStoryboardInstance() ->  LoadVideoViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LoadVideoViewController") as! LoadVideoViewController
        return vc
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        vcLoadVideo = segue.destination as? AVPlayerViewController
        let player = AVPlayer(url: videoURl)
        vcLoadVideo?.player = player
        vcLoadVideo?.player?.play()
    }
    
    @IBAction func btnPlayToggled(_ sender: UIButton) {
        if sender.tag == 0 {
            sender.tag = 1
            vcLoadVideo?.player?.play()
        } else {
            sender.tag = 0
            vcLoadVideo?.player?.pause()
        }
    }
    
    
}
