//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Stephi Goering on 22/11/14.
//  Copyright (c) 2014 Stephi Goering. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var humanYearsTextField: UITextField!
    @IBOutlet weak var convertedDogYearsLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func convertToDogYearsButton(sender: UIButton) {
        
        convertedDogYearsLabel.hidden = false
        
        let convertionConstant = 7
        
        convertedDogYearsLabel.text = "\(humanYearsTextField.text) human years convert to \(humanYearsTextField.text.toInt()! / convertionConstant) dog years"
        
        humanYearsTextField.text = ""
        humanYearsTextField.resignFirstResponder()
        
    }

    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        
        convertedDogYearsLabel.hidden = false
        
        let youngDogConvertionConstant = 10.5
        let oldDogConvertionConstant = 4.0
        let humanYears = Double((humanYearsTextField.text as NSString).doubleValue)
        
        if humanYears <= 2 {
            convertedDogYearsLabel.text = "\(humanYearsTextField.text) dog years convert to \(humanYears * youngDogConvertionConstant) real human years"
            
        } else {
              convertedDogYearsLabel.text = "\(humanYearsTextField.text)  dog years convert to \((youngDogConvertionConstant * 2.0) + (humanYears - 2) * oldDogConvertionConstant)  real human years"
        }
        
        humanYearsTextField.text = ""
        humanYearsTextField.resignFirstResponder()

    }
}

