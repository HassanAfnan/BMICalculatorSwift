//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Afnan on 23/05/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    var bmi:BMI?
    
    mutating func calculateBMI(height:Float,weight:Float){
        let finalbmi = weight / pow(height, 2);
        if finalbmi < 18.5{
            bmi = BMI(value: finalbmi, suggestion: "Eat more pies", color:UIColor.purple)
        }
        else if finalbmi >= 18.5 && finalbmi <= 24.9 {
            bmi = BMI(value: finalbmi, suggestion: "Fit as a fiddle", color:UIColor.green)
        }
        else if finalbmi > 24.9 {
            bmi = BMI(value: finalbmi, suggestion: "Eat less pies", color:UIColor.systemPink)
        }
        else{
            bmi = BMI(value: finalbmi, suggestion: "No advice", color:UIColor.blue)
        }
    }
    
    func getBMI() -> String {
        let bmiToDecimal = String(format: "%.2f",bmi?.value ?? 0.0)
        return bmiToDecimal
    }
    
    func getAdvice() -> String {
        let advice = bmi?.suggestion
        return advice!
    }
    
    func getColor() -> UIColor {
        let color = bmi?.color
        return color!
    }
}
