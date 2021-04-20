//
//  ViewController.swift
//  Calculator
//
//  Created by Michael Einman on 4/19/21.
//

import UIKit

class ViewController: UIViewController {
    
    var calculation = Calculation()

    
    
    //IBOutlet resultLabel is disconnected.. BOOM
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func acButton(_ sender: UIButton) {
        calculationString = ""
    }
    

    @IBAction func numberPressed(_ sender: UIButton) {
        let pressed = sender.titleLabel?.text!
        calculationString.append("\(pressed)")
        resultLabelUpdate()
        print("\(pressed)")
    }
    

    
    @IBAction func operatorPressed(_ sender: UIButton) {
        let pressed = sender.titleLabel?.text!
        calculationString.append(pressed!)
        print("\(pressed)")
    }
    

    
    @IBAction func equalsButton(_ sender: UIButton) {
        
        
    }
    
    
    var calculationString: String = ""
    
//    func numberPressed (pressed: String){
//        calculationString.append("\(pressed)")
//        resultLabelUpdate()
//        print("\(pressed)")
//    }
//
//    func operationPressed (pressed: String) {
//        calculationString.append(pressed)
//        print("\(pressed)")
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        calculate()
    }
    
    func resultLabelUpdate(){
        //NEGATRON
        resultLabel.text = calculationString
    }
    
//    func calculate() -> Double{
//        let result = Double(calculationString) ?? 0
//        return result
//    }
    
}

