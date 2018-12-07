//
//  ViewController.swift
//  Audioplayer
//
//  Created by Wostracky, David on 04.12.18.
//  Copyright © 2018 Wostracky, David. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit


class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    @IBAction func actionButton(_ sender: UIButton) {
        // Pfadangabe
        guard let path = Bundle.main.path(forResource: "klavier", ofType: "mp3") else { return }
        let url = URL(fileURLWithPath: path)
        let player = AVPlayer(url: url)
        let playerviewcontroller = AVPlayerViewController()
        playerviewcontroller.player = player
        
        
        self.present(playerviewcontroller, animated: true){
            if let frame = playerviewcontroller.contentOverlayView?.bounds{
                
                // Bild im Player
                let imageView = UIImageView(image: UIImage(named:"1536"))
                
                imageView.frame = frame
                
                playerviewcontroller.contentOverlayView?.addSubview(imageView)
            }
            
            playerviewcontroller.player!.play()
        }
    }y
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }


}

