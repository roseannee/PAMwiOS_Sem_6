//
//  ViewController.swift
//  lab_2
//
//  Created by DL on 27/02/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstNumberField: UITextField!
    @IBOutlet weak var secondNumberField: UITextField!
    @IBOutlet weak var resultField: UITextField!
    @IBOutlet weak var errorField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func calculateSum(_ sender: Any) {
        guard let firstNumber = Double(firstNumberField.text ?? ""),
              let secondNumber = Double(secondNumberField.text ?? "") else {
            errorField.text = "Error: Enter numbers in fields 1 and 2."
            return
        }
        
        let sum = firstNumber + secondNumber
        resultField.text = "\(roundNumber(number: sum))"
    }
    
    @IBAction func clearAll(_ sender: Any) {
        firstNumberField.text = ""
        secondNumberField.text = ""
        resultField.text = ""
        errorField.text = ""
    }
    
    func roundNumber(number: Double) -> Double {
        let result = round(number * 100) / 100
        
        return result
    }
}
