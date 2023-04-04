//
//  ViewController.swift
//  lab_3
//
//  Created by DL on 03/03/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstNumberField: UITextField!
    @IBOutlet weak var secondNumberField: UITextField!
    @IBOutlet weak var resultField: UITextField!
    @IBOutlet weak var errorField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calcSum(_ sender: Any) {
        guard isNumber(firstNumberField), isNumber(secondNumberField) else {
            errorField.text = "Error: Enter numbers in fields 1 and 2."
            return
        }
        errorField.text = ""
        
        let num1 = Double(firstNumberField.text!)!
        let num2 = Double(secondNumberField.text!)!
        
        resultField.text = "\(add(num1, num2))"
    }
    
    @IBAction func calcSubstraction(_ sender: Any) {
        guard isNumber(firstNumberField), isNumber(secondNumberField) else {
            errorField.text = "Error: Enter numbers in fields 1 and 2."
            return
        }
        errorField.text = ""
        
        let num1 = Double(firstNumberField.text!)!
        let num2 = Double(secondNumberField.text!)!
        
        resultField.text = "\(substract(num1, num2))"
    }
    
    @IBAction func calcMultiplication(_ sender: Any) {
        guard isNumber(firstNumberField), isNumber(secondNumberField) else {
            errorField.text = "Error: Enter numbers in fields 1 and 2."
            return
        }
        errorField.text = ""
        
        let num1 = Double(firstNumberField.text!)!
        let num2 = Double(secondNumberField.text!)!
        
        resultField.text = "\(multiply(num1, num2))"
    }
    
    @IBAction func calcDivision(_ sender: Any) {
        guard isNumber(firstNumberField), isNumber(secondNumberField) else {
            errorField.text = "Error: Enter numbers in fields 1 and 2."
            return
        }
        errorField.text = ""
        
        let num1 = Double(firstNumberField.text!)!
        let num2 = Double(secondNumberField.text!)!
        
        do {
            let result = try divide(num1, num2)
            resultField.text = "\(result)"
        } catch {
            errorField.text = "Error: Divide by zero"
        }
    }
    
    @IBAction func clearAll(_ sender: Any) {
        firstNumberField.text = ""
        secondNumberField.text = ""
        resultField.text = ""
        errorField.text = ""
    }
    
    func add(_ a: Double, _ b: Double) -> Double {
        return a + b
    }
    
    func substract(_ a: Double, _ b: Double) -> Double {
        return a - b
    }
    
    func multiply(_ a: Double, _ b: Double) -> Double {
        return a * b
    }
    
    func divide(_ a: Double, _ b: Double) throws -> Double {
        guard b != 0 else {
            throw CalculatorError.divideByZero
        }
        return a / b
    }
    
    func isNumber(_ textField: UITextField) -> Bool {
        guard Double(textField.text ?? "") != nil else {
            return false
        }
        
        return true
    }
    
    enum CalculatorError: Error {
        case divideByZero
    }
}
