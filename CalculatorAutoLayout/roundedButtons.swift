//
//  roundedButtons.swift
//  CalculatorAutoLayout
//
//  Created by Tamas Sagi on 11/07/2017.
//  Copyright © 2017 Tamas Sagi. All rights reserved.
//

import UIKit

class roundedButtons: UIButton {

    @IBInspectable var roundedCorners: CGFloat {
        get {
            return layer.cornerRadius
        }
        set{
            layer.cornerRadius = newValue
        }
    }
}
