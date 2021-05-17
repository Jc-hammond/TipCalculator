//
//  PercentageButtons.swift
//  Calculator
//
//  Created by Connor Hammond on 5/17/21.
//

import UIKit

class PercentageButtons: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupButton()
    }
    
    func setupButton() {
        setTitleColor(Colors.customPurple, for: .normal)
        updateFontTo(font: FontNames.avenirHeavy)
    }
    
    func updateFontTo(font: String) {
        guard let size = self.titleLabel?.font.pointSize else {return}
        self.titleLabel?.font = UIFont(name: font, size: size)
    }
    
    
}
