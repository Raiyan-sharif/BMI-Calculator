//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by raiyan sharif on 13/7/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color 
        // Do any additional setup after loading the view.
//        view.backgroundColor = .red
//        let label = UILabel()
//        label.text = bmiValue
//        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
//        view.addSubview(label)
        
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }
    

}
