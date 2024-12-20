//
//  ViewController.swift
//  Tipsy
//
//  Created by Artem on 12/20/24.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip = 0.0
    var numberOfPeople = 2
    var billTotal = 0.0
    
    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let billTitle = sender.currentTitle!
        let billTitleWithoutPercentSign = String(billTitle.dropLast())
        let billAsNumber = Double(billTitleWithoutPercentSign)!
        tip = billAsNumber / 100
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {

    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
    }
}

