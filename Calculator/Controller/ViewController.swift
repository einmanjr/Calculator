//
//  ViewController.swift
//  Calculator
//
//  Created by Michael Einman on 4/19/21.
//

import UIKit

class ViewController: UIViewController {
    

    
    
    //IBOutlet resultLabel is disconnected.. BOOM
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func acButton(_ sender: UIButton) {
        calculationString = ""
    }
    
    @IBAction func posnegButton(_ sender: UIButton) {
        addCalc(pressed: "-")
        //THIS IS PROBABLY FUCKED!!
    }
    
    @IBAction func percentButton(_ sender: UIButton) {
        addCalc(pressed: "%")
    }
    
    @IBAction func divisionButton(_ sender: UIButton) {
        addCalc(pressed: "/")
    }
    
    @IBAction func sevenButton(_ sender: UIButton) {
        addCalc(pressed: "7")
    }
    
    @IBAction func eightButton(_ sender: UIButton) {
        addCalc(pressed: "8")
    }
    
    @IBAction func ninebutton(_ sender: UIButton) {
        addCalc(pressed: "9")
    }
    
    @IBAction func multiplicationButton(_ sender: UIButton) {
        addCalc(pressed: "*")
    }
    
    @IBAction func fourButton(_ sender: UIButton) {
        addCalc(pressed: "4")
    }
    
    @IBAction func fiveButton(_ sender: UIButton) {
        addCalc(pressed: "5")
    }
    
    @IBAction func sixButton(_ sender: UIButton) {
        addCalc(pressed: "6")
    }
    
    @IBAction func minusButton(_ sender: UIButton) {
        addCalc(pressed: "-")
    }
    
    @IBAction func oneButton(_ sender: UIButton) {
        addCalc(pressed: "1")
    }
    
    @IBAction func twoButton(_ sender: UIButton) {
        addCalc(pressed: "2")
    }
    
    @IBAction func threeButton(_ sender: UIButton) {
        addCalc(pressed: "3")
    }
    
    @IBAction func plusButton(_ sender: UIButton) {
        addCalc(pressed: "+")
    }
    
    @IBAction func zeroButton(_ sender: UIButton) {
        addCalc(pressed: "0")
    }
    
    @IBAction func decimalButton(_ sender: UIButton) {
        addCalc(pressed: ".")
    }
    
    @IBAction func equalsButton(_ sender: UIButton) {
        calculate()
    }
    
    
    var calculationString: String = ""
    
    func addCalc (pressed: String){
        calculationString.append("\(pressed)")
        resultLabelUpdate()
        print("\(pressed)")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculate()
    }
    
    func resultLabelUpdate(){
        //NEGATRON
        resultLabel.text = calculationString
    }
    
    func calculate() -> Double{
        let result = Double(calculationString) ?? 0
        return result
    }
    
}

