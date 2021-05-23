//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Afnan on 22/05/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var suggestionLabel: UILabel!
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    var bmiValue:String?
    var color:UIColor?
    var advice:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        suggestionLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func reCalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
