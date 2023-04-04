//
//  main.swift
//  lab_1
//
//  Created by DL on 27/02/2023.
//

import Foundation

func main() {
    print("Give fixed business costs:")
    guard let fixedCosts = validateNumber() else {
        return main()
    }
    
    print("Give cost of 1 unit:")
    guard let unitCost = validateNumber() else {
        return main()
    }
    
    print("Give quantity of units:")
    guard let quantity = validateNumber() else {
        return main()
    }
    
    print("Give margin in %:")
    guard let margin = validateNumber() else {
        return main()
    }
    
    let unitPrice = calculateUnitPrice(uc: unitCost, m: margin, fc: fixedCosts, q: quantity)
    let profit = calculateProfit(up: unitPrice, q: quantity, uc: unitCost, fc: fixedCosts)
    let extendedProfit = calculateExtendedQuantity(uc: unitCost, m: margin, up: unitPrice, q: quantity, fc: fixedCosts)
    
    print("\nPrice of 1 unit: \(unitPrice) zł")
    print("Profit: \(profit) zł\n")
    printExtendedQuantity(extendedProfit: extendedProfit)
    
    print("Czy chcesz obliczyć zysk dla innych danych? (T/N)")
    guard let answer = readLine(), answer.lowercased() == "t" else {
        return
    }
    
    main()
}

main()

func calculateUnitPrice(uc: Double, m: Double, fc: Double, q: Double) -> Double {
    let result = uc + (uc / 100 * m) + fc / q

    return result
}

func calculateProfit(up: Double, q: Double, uc:Double, fc: Double) -> Double {
    let result = up * q - uc * q - fc
    return result
}

func calculateExtendedQuantity(uc: Double, m: Double, up: Double, q: Double, fc: Double) -> [(Double, Double, Double)] {
    let results = [10, 100].map { qty -> (Double, Double, Double) in
        let extendedQuantity = roundNumber(number: Double(qty) * q)
        
        let extendedUnitPrice = uc + (uc / 100 * m) + fc / extendedQuantity
        let extendedProfit = up * extendedQuantity - uc * extendedQuantity - fc
        
        return (extendedQuantity, extendedUnitPrice, extendedProfit)
    }
    
    return results
}

func printExtendedQuantity(extendedProfit: [(Double, Double, Double)]) {
    for ep in extendedProfit {
        print("Profit for \(ep.0) units: unit cost: \(ep.1) zł, profit: \(ep.2) zł\n")
    }
}

func validateNumber() -> Double? {
    guard let userInput = readLine(), let number = Double(userInput), number > 0 else {
        print("Incorrect value. Try again.")
        return nil
    }
    
    return number
}

func roundNumber(number: Double) -> Double {
    let result = ceil(number / 10) * 10
    
    return result
}

//let unitPrice = unitCost + (unitCost / 100 * margin) + fixedCosts / quantity
//let profit = unitPrice * quantity - unitCost * quantity - fixedCosts
