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
    let targetNumber = Int.random(in: 1...100)
    @IBOutlet weak var SubmittedGuess: UITextField!
    
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
        
        // Report the target number to the console for testing purposes
        print ("For testing purposes, the random number is \(targetNumber)")
        
    }

    // Will use to check the guess
    @IBAction func checkGuess(_ sender: Any) {
        
        // Obtain the guess from the textfield
        let guessText = SubmittedGuess.text!
        let guessNumber = Int(guessText)!
    
        //  for testing purposes, what was the guess?
        print ("For testing purposes, the guess nummber made was \(guessNumber)")
        
        //give the appropriate feedback to the user
        if guessNumber > targetNumber {
            print("Guess lower next time")
          
            
            
            
        } else if guessNumber < targetNumber {
            print("Guess higher next time")
            
            
            
        } else {
            print("You are correct!")
        }
        
    }
    
    
}

