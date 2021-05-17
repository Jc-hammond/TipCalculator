//
//  CalculatedTipLabel.swift
//  Calculator
//
//  Created by Connor Hammond on 5/17/21.
//

import UIKit

class CalculatedLabel: UILabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupLabel() {
        self.textColor = .white
        updateFontTo(font: FontNames.avenirMedium)
    }
    
    
    func updateFontTo(font: String) {
        guard let size = self.font?.pointSize else {return}
        self.font = UIFont(name: font, size: size)
    }
    
}
