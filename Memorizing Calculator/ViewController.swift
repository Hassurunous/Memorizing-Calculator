//
//  ViewController.swift
//  Memorizing Calculator
//
//  Created by Michael Loubier on 11/28/16.
//  Copyright © 2016 Michael Loubier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Declaring outlets
    @IBOutlet weak var numberViewLabel: UILabel!
    @IBOutlet weak var computerResultsNumLabel: UILabel!
    
    // MARK: Declaring Actions
    @IBAction func oneButton(_ sender: AnyObject) {
        appendToCalculationArray(input: "1")
    }
    @IBAction func twoButton(_ sender: AnyObject) {
        appendToCalculationArray(input: "2")
    }
    @IBAction func threeButton(_ sender: AnyObject) {
        appendToCalculationArray(input: "3")
    }
    @IBAction func fourButton(_ sender: AnyObject) {
        appendToCalculationArray(input: "4")
    }
    @IBAction func fiveButton(_ sender: AnyObject) {
        appendToCalculationArray(input: "5")
    }
    @IBAction func sixButton(_ sender: AnyObject) {
        appendToCalculationArray(input: "6")
    }
    @IBAction func sevenButton(_ sender: AnyObject) {
        appendToCalculationArray(input: "7")
    }
    @IBAction func eightButton(_ sender: AnyObject) {
        appendToCalculationArray(input: "8")
    }
    @IBAction func nineButton(_ sender: AnyObject) {
        appendToCalculationArray(input: "9")
    }
    @IBAction func zeroButton(_ sender: AnyObject) {
        appendToCalculationArray(input: "0")
    }
    @IBAction func plusButton(_ sender: AnyObject) {
        appendToCalculationArray(input: "+")
    }
    @IBAction func minusButton(_ sender: AnyObject) {
        appendToCalculationArray(input: "-")
    }
    @IBAction func equalsButton(_ sender: AnyObject) {
        appendToCalculationArray(input: "=")
    }
    
    @IBAction func clearButton(_ sender: AnyObject) {
        appendToCalculationArray(input: "C")
    }
    @IBAction func previousCalculationsButton(_ sender: AnyObject) {
    }
    
    // MARK: Variables
    // Array to store input from Calculator
    var inputArray = [String]()
    // Array to store completed Calculations
    var calculationsArray = [[String]]()
    
    // MARK: View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // MARK: Did Receive Memory Warning
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: Public functions
    // Get input from the calculator
    func appendToCalculationArray(input:String) {
        var inputNum = 0
        print(#file, #function, #line)
        print("inputNum = \(inputNum), Line: \(#line)")
        print("input = \(input), Line: \(#line)")
        switch input {
        case "=":
            //process the inputs
            inputArray.append("=")
            calculationsArray.append([inputArray.joined()])
        case "+":
            inputNum += 1
        case "-":
            inputNum += 1
        case "C":
            inputArray = []
        default:
            inputArray[inputNum].append(input)
        }
//        if input == "=" {
//            //process the inputs
//            inputArray.append("=")
//            calculationsArray.append(inputArray.joined())
//            print(calculationsArray)
//        }
//        else if input == "C" {
//            inputArray = []
//        }
//        else if {
//            input == "+" {
//                
//            }
//            else
//        }
//        else {
//            inputArray.append(input)
//        }
        print(inputArray)
    }
    

}

