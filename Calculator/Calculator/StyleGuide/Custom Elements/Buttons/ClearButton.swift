//
//  ClearButton.swift
//  Calculator
//
//  Created by Connor Hammond on 5/17/21.
//

import UIKit

class ClearButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupButton()
    }
    
    func setupButton() {
        updateFontTo(font: FontNames.avenirHeavy)
        self.addCornerRadius()
        setTitleColor(Colors.customBlue, for: .normal)
    }
    
    func updateFontTo(font: String) {
        guard let size = self.titleLabel?.font.pointSize else {return}
        self.titleLabel?.font = UIFont(name: font, size: size)
    }
    
    
}
