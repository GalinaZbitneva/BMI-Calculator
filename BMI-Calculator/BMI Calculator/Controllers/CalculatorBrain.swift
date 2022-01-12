//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Галина Збитнева on 13.09.2021.

import Foundation
import UIKit

struct Calculator {
    var height: Float = 0
    var weight: Float = 0
    var bmi: BMI?
    
    mutating func calculateBMI(height:Float, weight:Float) {
        let bmiValue = weight / pow(height, 2)
        
            if bmiValue < 18.5 {
                bmi = BMI(value: bmiValue, advice: "Eat more", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
            } else if (bmiValue < 24.9 && bmiValue > 18.5) {
                bmi = BMI(value: bmiValue, advice: "Fit as the hourglass", color: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
            } else {
                bmi = BMI(value: bmiValue, advice: "You shoud eat fewer amount of food", color: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
            }
          
    }
    
    func getBmiValue()-> String{
        return String(format: "%.2f", bmi?.value ?? "")
    }
    
    func getBMIAdvice()-> String{
        return bmi?.advice ?? ""
    }
    
    func getBMIColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
}
 
