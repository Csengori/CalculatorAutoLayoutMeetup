//
//  ViewController.swift
//  CalculatorAutoLayout
//
//  Created by Tamas Sagi on 11/07/2017.
//  Copyright © 2017 Tamas Sagi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var helloBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(randomButton)
        setupConstraints()
    }
    
    func setupConstraints(){
        //Hello button outlet
        helloBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        helloBtn.centerYAnchor.constraint(equalTo:  view.centerYAnchor).isActive = true
        helloBtn.widthAnchor.constraint(equalTo:  view.widthAnchor).isActive = true
        helloBtn.heightAnchor.constraint(equalToConstant: 40).isActive = true
        helloBtn.translatesAutoresizingMaskIntoConstraints = false
        
        //Random button
        randomButton.centerYAnchor.constraint(equalTo: helloBtn.centerYAnchor, constant: -50 ).isActive = true
        randomButton.centerXAnchor.constraint(equalTo: helloBtn.centerXAnchor).isActive = true
        randomButton.widthAnchor.constraint(equalTo: helloBtn.widthAnchor).isActive = true
        randomButton.heightAnchor.constraint(equalTo: helloBtn.heightAnchor).isActive = true
        
    }
    
    let randomButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(Red: 240, Green: 240, Blue: 240)
        button.setTitleColor(UIColor(Red: 21, Green: 21, Blue: 21), for: .normal)
        button.setTitle("Hello I'm a button too", for: .normal)
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
