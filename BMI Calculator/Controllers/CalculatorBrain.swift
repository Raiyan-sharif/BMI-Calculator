//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by raiyan sharif on 14/7/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain{
    var resultBMI:BMI?
    
    mutating func calculateBMI(height:Float, weight:Float){
        
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5{
            print("underweight")
            resultBMI = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
        else if bmiValue > 24.9{
            print("Overweight")
            resultBMI = BMI(value: bmiValue, advice: "Eat less pie", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
        else{
            print("Normal")
            resultBMI = BMI(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }
        
        
        
    }
    func getBMIValue()-> String{
        return String(format: "%.1f",resultBMI?.value ?? 0.0)
    }
    func getAdvice() -> String {
        return resultBMI?.advice ?? " "
    }
    func getColor() -> UIColor {
        return resultBMI?.color ??  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
}
