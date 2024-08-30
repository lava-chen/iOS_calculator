//
//  ViewController.swift
//  Calculator
//
//  Created by 陈炫羽 on 2024/8/29.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let myView = UIView()
        myView.frame = CGRect(x: 0, y: 1056, width: 1179, height: 1500)
        // Do any additional setup after loading the view.
        let board = Board(frame:self.view.bounds)
        self.view.addSubview(board)
    }


}

