//
//  ViewController.swift
//  Count
//
//  Created by 関川隼人 on 2020/09/03.
//  Copyright © 2020 関川隼人. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plus(){
        number = number + 1
        label.text = String(number)
        ChangeColor()
    }

    @IBAction func sub(){
        number -= 1
        label.text = String(number)
        ChangeColor()
    }
    @IBAction func multi(){
        number *= 2
        label.text = String(number)
        ChangeColor()
    }
    @IBAction func div(){
        number /= 2
        label.text = String(number)
        ChangeColor()
    }
    
    func ChangeColor(){
        if number >= 10 {
            label.textColor = UIColor.red
        }else if number <= -10{
            label.textColor = UIColor.blue
        }else{
            label.textColor = UIColor.black
        }
    }
}

