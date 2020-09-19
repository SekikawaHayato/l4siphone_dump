//
//  ViewController.swift
//  CountTest
//
//  Created by 関川隼人 on 2020/09/14.
//  Copyright © 2020 関川隼人. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!

    var number: Int = 0
    
    override func viewDidLoad() {
        label.text = String(number)
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plus(){
        number += 1
        label.text = String(number)
        
    }
    @IBAction func minus(){
        number -= 1
        label.text = String(number)
    }
    @IBAction func reset(){
        number = 0
        label.text = String(number)
    }

}

