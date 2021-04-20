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
        addCalc(press: "-")
        //THIS IS PROBABLY FUCKED!!
    }
    
    @IBAction func percentButton(_ sender: UIButton) {
        addCalc(press: "%")
    }
    
    @IBAction func divisionButton(_ sender: UIButton) {
        addCalc(press: "/")
    }
    
    @IBAction func sevenButton(_ sender: UIButton) {
        addCalc(press: "7")
    }
    
    @IBAction func eightButton(_ sender: UIButton) {
        addCalc(press: "8")
    }
    
    @IBAction func ninebutton(_ sender: UIButton) {
        addCalc(press: "9")
    }
    
    @IBAction func multiplicationButton(_ sender: UIButton) {
        addCalc(press: "*")
    }
    
    @IBAction func fourButton(_ sender: UIButton) {
        addCalc(press: "4")
    }
    
    @IBAction func fiveButton(_ sender: UIButton) {
        addCalc(press: "5")
    }
    
    @IBAction func sixButton(_ sender: UIButton) {
        addCalc(press: "6")
    }
    
    @IBAction func minusButton(_ sender: UIButton) {
        addCalc(press: "-")
    }
    
    @IBAction func oneButton(_ sender: UIButton) {
        addCalc(press: "1")
    }
    
    @IBAction func twoButton(_ sender: UIButton) {
        addCalc(press: "2")
    }
    
    @IBAction func threeButton(_ sender: UIButton) {
        addCalc(press: "3")
    }
    
    @IBAction func plusButton(_ sender: UIButton) {
        addCalc(press: "+")
    }
    
    @IBAction func zeroButton(_ sender: UIButton) {
        addCalc(press: "0")
    }
    
    @IBAction func decimalButton(_ sender: UIButton) {
        addCalc(press: ".")
    }
    
    @IBAction func equalsButton(_ sender: UIButton) {
        addCalc(press: "=")
    }
    
    
    var calculationString: String = ""
    
    func addCalc (press: String){
        calculationString.append("\(press)")
        print("\(press)")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func resultLabelUpdate(){
        //NEGATRON
        resultLabel.text = calculationString
    }
    
    
}

