//
//  MainLabel.swift
//  Calculator
//
//  Created by Connor Hammond on 5/17/21.
//

import UIKit

class MainLabel: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        setupLabel()
    }
    
    func setupLabel() {
        self.textColor = Colors.customBlue
        self.addCornerRadius()
        updateFontTo(font: FontNames.avenirHeavy)
    }
    
    func updateFontTo(font: String) {
        guard let size = self.font?.pointSize else {return}
        self.font = UIFont(name: font, size: size)
    }
}


