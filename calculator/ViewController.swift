//
//  ViewController.swift
//  calculator
//
//  Created by Даниил on 09.03.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var displayLabel: UILabel!
    
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
        switch sender.tag {
            case 10:
                print("Pressed +")
            case 11:
                print("Pressed -")
            case 12:
                print("Pressed ×")
            case 13:
                print("Pressed ÷")
            default:
                print("Unknown operation tag: \(sender.tag)")
            }
    }
    
    @IBAction func equalsPressed(_ sender: UIButton) {
        print("Pressed =")
    }
    @IBAction func clearPressed(_ sender: UIButton) {
        displayLabel.text = "0"
    }
    
    
    
    
    
    
}

