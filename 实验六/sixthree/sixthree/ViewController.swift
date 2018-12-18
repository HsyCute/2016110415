//
//  ViewController.swift
//  sixthree
//
//  Created by student on 2018/12/15.
//  Copyright © 2018年 . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let oneView = UIView()
        oneView.backgroundColor = #colorLiteral(red: 1, green: 0.6834542155, blue: 0.5937021971, alpha: 1)
        let twoView = UIView()
        twoView.backgroundColor = #colorLiteral(red: 0.615688026, green: 0.9823960662, blue: 0.990606606, alpha: 1)
        let threeView = UIView()
        threeView.backgroundColor = #colorLiteral(red: 0.7210478187, green: 0.7145537734, blue: 1, alpha: 1)
        let stackView = UIStackView(arrangedSubviews: [oneView,twoView,threeView])
        
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        stackView.spacing = 20
        
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

