//
//  TipCalculatorViewController.swift
//  Calculator
//
//  Created by Connor Hammond on 5/17/21.
//

import UIKit

class TipCalculatorViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var totalTextField: UITextField!
    @IBOutlet weak var tipTextLabel: UILabel!
    @IBOutlet weak var endTotalTextLabel: UILabel!
    @IBOutlet weak var fifteenButton: PercentageButtons!
    @IBOutlet weak var twentyButton: PercentageButtons!
    @IBOutlet weak var twentyFiveButton: PercentageButtons!
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    
    func setupViews() {
        view.backgroundColor = Colors.customGray
    }
    
    //MARK: - Actions
    @IBAction func mainViewTapped(_ sender: Any) {
        view.endEditing(true)
    }
  
    @IBAction func fifteenButtonTapped(_ sender: Any) {
        let percentage = 0.15
        calculateTip(percentage: percentage)
    }
    
    @IBAction func twentyButtonTapped(_ sender: Any) {
        let percentage = 0.2
        calculateTip(percentage: percentage)
    }
    
    @IBAction func twentyFiveButtonTapped(_ sender: Any) {
        let percentage = 0.25
        calculateTip(percentage: percentage)
    }
    
    @IBAction func clearButtonTapped(_ sender: Any) {
        totalTextField.text = ""
        tipTextLabel.text = "$0.00"
        endTotalTextLabel.text = "$0.00"
        }
    
    
    //MARK: - Functions
    func calculateTip(percentage: Double) {
        let bill = Double(totalTextField.text!) ?? 0
        let calculatedTip = bill * percentage
        let total = bill + calculatedTip
        tipTextLabel.text = "$\(calculatedTip)"
        endTotalTextLabel.text = "$\(total)"
    }
    
    
    
} //End of class
