//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightOutlet: UISlider!
    
    @IBOutlet weak var weightOutlet: UISlider!
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    var bmi = CalculatorBrain()
    
    @IBAction func heightSlider(_ sender: UISlider) {
        print(String(format: "%.2f", sender.value))
        let height:String = String(format: "%.2f",sender.value);
        heightLabel.text = "\(height) m"
    }
    
    
    @IBAction func weightSlider(_ sender: UISlider) {
        print(String(format: "%.0f", sender.value))
        let weight:String = String(format: "%.0f", sender.value);
        weightLabel.text = "\(weight) Kg"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        let height = heightOutlet.value;
        let weight = weightOutlet.value;
        
        bmi.calculateBMI(height: height,weight: weight)
    
        self.performSegue(withIdentifier: "goToResult",sender:self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmi.getBMI()
            destinationVC.advice = bmi.getAdvice()
            destinationVC.color = bmi.getColor()
        }
    }
    

}

