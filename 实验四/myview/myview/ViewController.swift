//
//  ViewController.swift
//  myview
//
//  Created by student on 2018/12/17.
//  Copyright © 2018年 . All rights reserved.
//

import UIKit

class MyView: UIView {
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        
        UIColor.orange.setFill()
        path.fill()
    }
}
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let oval = MyView(frame:  CGRect(x: 150, y: 200, width: 200, height: 150))
        oval.backgroundColor = UIColor.clear
        self.view.addSubview(oval)
    }
    
    
    
}

