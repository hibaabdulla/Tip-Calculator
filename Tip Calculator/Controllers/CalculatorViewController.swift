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
    
    var total: Double = 0
    var percentage = 0
    
    
    @IBAction func tipButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        
        
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
}

