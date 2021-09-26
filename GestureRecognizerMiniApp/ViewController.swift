//
//  ViewController.swift
//  GestureRecognizerMiniApp
//
//  Created by Ella Madalinski on 9/26/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var eyesOutlet: UIImageView!
    @IBOutlet weak var mouthOutlet: UIImageView!
    @IBOutlet weak var handOutlet: UIImageView!
    @IBOutlet weak var lightsaberOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func eyesTapRecognizerOutlet(_ sender: UITapGestureRecognizer) {
        
        var tappedLoc = sender.location(in: view)
        eyesOutlet.center = tappedLoc
    }
    
    
    @IBAction func mouthPanOutlet(_ sender: UIPanGestureRecognizer) {
        var pannedLoc = sender.location(in: view)
        mouthOutlet.center = pannedLoc
    }
    
    @IBAction func handPanOutlet(_ sender: UIPanGestureRecognizer) {
        var pannedLoc = sender.location(in: view)
        handOutlet.center = pannedLoc
    }
    
    @IBAction func lightsaberPanOutlet(_ sender: UIPanGestureRecognizer) {
        var pannedLoc = sender.location(in: view)
        lightsaberOutlet.center = pannedLoc
    }
    
    
    
}

