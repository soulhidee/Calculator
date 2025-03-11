//
//  ViewController.swift
//  calculator
//
//  Created by Даниил on 09.03.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var displayLabel: UILabel!
    private var firstNumber: Double = 0
    private var currentOperation: String?
    private var secondNumber: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewController loaded")
        
        // Do any additional setup after loading the view.
    }
    @IBAction func numberPressed(_ sender: UIButton) {
        let number = sender.tag
        let numberString = String(number)
        displayLabel.text = displayLabel.text == "0" ? numberString : (displayLabel.text ?? "") + numberString
    }
    
    @IBAction func operationPressed(_ sender: UIButton) {
        if let text = displayLabel.text, let number = Double(text) {
            firstNumber = number
        }
        currentOperation = {
            switch sender.tag {
            case 10: return "+"
            case 11: return "-"
            case 12: return "*"
            case 13: return "÷"
            default: return nil
            }
        }()
        displayLabel.text = "0"
    }
    
    @IBAction func equalsPressed(_ sender: UIButton) {
         if let text = displayLabel.text, let number = Double(text) {
             secondNumber = number
         }
        guard let operation = currentOperation else { return }
        var result: Double = 0
        switch operation {
        case "+":
            result = firstNumber + secondNumber
        case "-":
            result = firstNumber - secondNumber
        case "*":
            result = firstNumber * secondNumber
        case "÷":
            result = firstNumber / secondNumber
        default:
            break
        }
        
        displayLabel.text = String(result)
     }
    
    @IBAction func clearPressed(_ sender: UIButton) {
        displayLabel.text = "0"
        firstNumber = 0
        secondNumber = 0
        currentOperation = nil
    }
    
    
    
    
    
    
}

