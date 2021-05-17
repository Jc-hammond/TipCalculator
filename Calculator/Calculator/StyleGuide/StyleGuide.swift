//
//  StyleGuide.swift
//  Calculator
//
//  Created by Connor Hammond on 5/17/21.
//

import UIKit

extension UIView {
    
    func addCornerRadius(_ radius: CGFloat = 10) {
        self.layer.cornerRadius = radius
    }
    
    func addAccentBorder(width: CGFloat = 1, color: UIColor = .blue) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
    
}


struct Colors {
    static let customGray = UIColor(red: 26/255, green: 27/255, blue: 38/255, alpha: 1)
    static let customBlue = UIColor(red: 8/255, green: 29/255, blue: 189/255, alpha: 1)
    static let customPurple = UIColor(red: 103/255, green: 53/255, blue: 146/255, alpha: 1)
}


struct FontNames {
    static let avenirHeavy = "Avenir-Heavy"
    static let avenirLight = "Avenir-Light"
    static let avenirMedium = "Avenir-Medium"
    
}
