//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightvalueTextValue: UILabel!
    @IBOutlet weak var weightvalueTextLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmiValue = "0.0"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = Float(String(format: "%.2f", sender.value))
        heightvalueTextValue.text = "\(height!)m"
        
        
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = Int(sender.value)
        weightvalueTextLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calcularPressed(_ sender: UIButton) {
        let height = Float(String(format: "%.2f", heightSlider.value))!
        let weight = weightSlider.value
        let bmi = weight / (height * height)
        bmiValue = String(format: "%.1f", bmi)
        self.performSegue(withIdentifier: "goToResults", sender: self)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults"{
            let destinationVC = segue.destination as! CalculateViewController
            destinationVC.bmiValue = bmiValue
            print(bmiValue)
            
        }
    }
}

