//
//  ViewController.swift
//  Perfect Egg
//
//  Created by Michael Callahan on 1/19/22.
//

import UIKit

class ViewController: UIViewController {

    let eggTimes = ["Soft" : 300, "Medium" : 420, "Hard" : 720]
    
    var secondsRemaining = 60

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        secondsRemaining = eggTimes[hardness]!
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondsRemaining > 0 {
            print("\(secondsRemaining) seconds.")
            secondsRemaining -= 1
        }
    }
    
}

