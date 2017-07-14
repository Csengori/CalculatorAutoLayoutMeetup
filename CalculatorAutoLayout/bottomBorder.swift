//
//  bottomBorder.swift
//  CalculatorAutoLayout
//
//  Created by Tamas Sagi on 11/07/2017.
//  Copyright © 2017 Tamas Sagi. All rights reserved.
//

import UIKit

@IBDesignable class bottomBorder: UITextField {
    
    private func testBottomBorder(withColor color: UIColor) {
        self.borderStyle = UITextBorderStyle.none
        self.backgroundColor = .clear
        let border = CALayer()
        let width = CGFloat(1)
        border.borderColor = color.cgColor
        border.frame = CGRect(x: 0, y: self.frame.height - width, width: self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        testBottomBorder(withColor: .init(Red: 21, Green: 21, Blue: 21))
    }
    
}
