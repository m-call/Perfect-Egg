//
//  ViewController.swift
//  Perfect Egg
//
//  Created by Michael Callahan on 1/19/22.
//

import UIKit

class ViewController: UIViewController {

    let softTime = 5
    let mediumTime = 7
    let hardTime = 12

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle
        
        if (hardness == "soft") {
            print(softTime)
        } else if (hardness == "medium") {
            print(mediumTime)
        } else {
            print(hardTime)
        }
    }
    
}

