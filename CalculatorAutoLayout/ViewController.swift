//
//  ViewController.swift
//  CalculatorAutoLayout
//
//  Created by Tamas Sagi on 11/07/2017.
//  Copyright © 2017 Tamas Sagi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(randomButton)
        setupConstraints()
    }
    
    func setupConstraints(){
        // NEED X, Y, HEIGHT, WIDTH
        //        randomButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //        randomButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        //        randomButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        //        randomButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -16).isActive = true
    }
    
    let randomButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(Red: 240, Green: 240, Blue: 240)
        button.setTitleColor(UIColor(Red: 21, Green: 21, Blue: 21), for: .normal)
        button.setTitle("Hello", for: .normal)
        button.layer.cornerRadius = 5.0
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
}
extension UIColor{
    convenience init(Red r: CGFloat, Green g: CGFloat, Blue b: CGFloat) {
        self.init(red: r / 255, green: g / 255, blue: b / 255, alpha: 1)
    }
}
