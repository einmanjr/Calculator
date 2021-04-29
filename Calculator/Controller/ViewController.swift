//
//  ViewController.swift
//  Calculator
//
//  Created by Michael Einman on 4/19/21.
//

import UIKit

class ViewController: UIViewController {
    
    var isFinishedTypingNumber: Bool = true
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func calcButtonPressed(_ sender: Any) {
        isFinishedTypingNumber = true
        
    }
    @IBAction func numButtonPressed(_ sender: UIButton) {
        if let numValue = sender.currentTitle{
            
            if isFinishedTypingNumber == true {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            } else {
                displayLabel.text = displayLabel.text! + numValue
            }
        }
    }
}
