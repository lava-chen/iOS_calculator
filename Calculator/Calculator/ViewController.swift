//
//  ViewController.swift
//  Calculator
//
//  Created by 陈炫羽 on 2024/8/29.
//

import UIKit

class ViewController: UIViewController {
    var numOnScreen:Double = 0

    @IBAction func numbers(_ sender: UIButton) {
        label.text = label.text! + String(sender.tag-1)
        
    }
    @IBOutlet weak var label: UILabel!
    
    @IBAction func clear(_ sender: UIButton) {
        label.text = ""
    }
    @IBAction func Delete(_ sender: UIButton) {
        label.text?.removeLast()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

