//
//  ResultViewController.swift
//  Quiz
//
//  Created by 関川隼人 on 2020/09/17.
//  Copyright © 2020 関川隼人. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var correctAnser: Int = 0
    
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = String(correctAnser)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(){
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
