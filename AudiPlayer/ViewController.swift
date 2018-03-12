//
//  ViewController.swift
//  AudiPlayer
//
//  Created by Christian Liefeldt on 11.03.18.
//  Copyright © 2018 Christian Liefeldt. All rights reserved.
//

import AVFoundation
import UIKit

class ViewController: UIViewController {
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swipedRight))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swipedLeft))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeRight)
        self.view.addGestureRecognizer(swipeLeft)
    }
    
   @objc func swipedRight(gestureRight: UIGestureRecognizer){
        print("rechts")
    }
    
    @objc func swipedLeft(gestureLeft: UIGestureRecognizer){
        print("links")
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake {
            print("shake")
        }
    }
}

