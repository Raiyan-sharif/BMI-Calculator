//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by raiyan sharif on 14/7/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain{
    var resultBMI:Float?
    
    mutating func calculateBMI(height:Float, weight:Float){
        resultBMI = weight / (height * height)
        
    }
    func getBMIValue()-> String{
        return String(format: "%.1f",resultBMI ?? 0.0)
    }
}
