//
//  ViewController.swift
//  CoolMath
//
//  Created by Konstantinas Falkovskis on 05/02/2017.
//  Copyright © 2017 Falco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Properties
    var number:Double = 0
    var countNumbers:Double = 0
    
    //Outlets
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var labelInfo: UILabel!
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var countButton: UIButton!
    
    //Functions
    @IBAction func play(_ sender: UIButton) {
   
        if textField.text != nil && textField.text != "" {
            number = Double(textField.text!)!
            labelText.text = "Now doesn't numbers: \(countNumbers)"
            
            logo.isHidden = false
            labelInfo.isHidden = false
            labelText.isHidden = false
            textField.isHidden = true
            playButton.isHidden = true
            countButton.isHidden = false
        }
    }
    
   
    @IBAction func count(_ sender: UIButton) {

        countNumbers += number
        let sum  = countNumbers + number
        labelText.text = "Count: \(number) + \(countNumbers) = \(sum)"
      
        if done() {
            restart()
        }
      }
    
    func restart() {
        number = 0
        countNumbers = 0
        textField.text = ""
        
        logo.isHidden = false
        labelInfo.isHidden = true
        labelText.isHidden = true
        textField.isHidden = false
        playButton.isHidden = false
        countButton.isHidden = true
        
        }
    
    func done() -> Bool {
        if countNumbers >= 100 {
           return true
        } else {
            return false
        }
    }
   
}

