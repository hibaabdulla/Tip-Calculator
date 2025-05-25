//
//  ResultViewController.swift
//  Tip Calculator
//
//  Created by Hiba Abdulla on 5/24/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    
    var total:Double = 0
    var splits = 0
    var tip = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        totalAmount.text = String(total)
        descriptionLabel.text = "Split between \(splits) people, with \(tip)% tip."
    }
    

    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
