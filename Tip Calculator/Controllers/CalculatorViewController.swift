//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Hiba Abdulla on 5/24/25.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var zeroPCButton: UIButton!
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var twentyPCButton: UIButton!
    @IBOutlet weak var tenPCButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var percentage: Double = 0
    var billAmount: Double = 0
    var selectedTip = 10
    var numberOfSplits = 0
    var result:Double = 0
        
    @IBAction func tipButtonPressed(_ sender: UIButton) {
        zeroPCButton.isSelected = false
        tenPCButton.isSelected = false
        twentyPCButton.isSelected = false
        
        sender.isSelected = true
        selectedTip = sender.tag
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        
        if let bill = billTextField.text, let number = Double(bill) {
            billAmount = number
        }
            
        percentage = Double(selectedTip) / 100
        result = (billAmount + (billAmount*percentage)) / Double(numberOfSplits)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.total = result
            destinationVC.splits = numberOfSplits
            destinationVC.tip = selectedTip
        }
    }
   
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        numberOfSplits = Int(sender.value)
        splitNumberLabel.text = String(numberOfSplits)
        
    }
}

