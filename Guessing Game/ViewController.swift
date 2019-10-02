//
//  ViewController.swift
//  Guessing Game
//
//  Created by Zhang, Jesse on 2019-09-30.
//  Copyright © 2019 Zhang, Jesse. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    // MARK: Properties
    
    
    // MARK: Initializers
    
    
    // MARK: Methods (functions) - behaviours
    
    // Run as soon as the view becomes visibale to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Make an object named 'synthesizer', which is a instance of the
        // class 'AVspeechsynthesizer'
        let synthesier = AVSpeechSynthesizer()
        
        // make a string that contain what we want the computer to say
        let message = "I am thinking of a number between 1 and 100. Guess what is it"
        
        // make an object named 'utterance' which is an intance of the class
        // AVspeechUtterance
        let utterance = AVSpeechUtterance(string: message)
        
        //Speak the message
        synthesier.speak(utterance)
        
    }


}

