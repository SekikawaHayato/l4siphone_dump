//
//  ViewController.swift
//  StopWatch
//
//  Created by 関川隼人 on 2020/09/03.
//  Copyright © 2020 関川隼人. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    @IBOutlet var hanteiLabel: UILabel!
    
    var count : Float = 0.0
    var timer : Timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Start(){
        if !timer.isValid {
            timer = Timer.scheduledTimer(timeInterval:0.01 ,target: self,selector: #selector(self.up),userInfo:nil , repeats:true )
            hanteiLabel.text = nil
        }
    }
    
    @IBAction func Stop(){
        if timer.isValid{
            timer.invalidate()
            Hantei()
        }
    }
    
    @IBAction func Reset(){
        if timer.isValid{
            timer.invalidate()
        }
        count = 0.0
        label.text = String(format: "%.2f",count)
        hanteiLabel.text = nil
    }
    
    @objc func up(){
        count += 0.01
        label.text = String(format: "%.2f",count)
    }
    
    func Hantei(){
        if abs(count - 10.0) <= 0.20{
            hanteiLabel.text = "PERFECT!"
        }else if abs(count - 10.0) <= 0.30{
            hanteiLabel.text = "GREAT!"
        }else if abs(count - 10.0) <= 0.50{
            hanteiLabel.text = "GOOD!"
        }else{
            hanteiLabel.text = "BAD"
        }
    }
}

