//
//  ViewController.swift
//  CocoaPodsApp
//
//  Created by 関川隼人 on 2020/09/19.
//  Copyright © 2020 関川隼人. All rights reserved.
//

import UIKit
import PKHUD

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        HUD.flash(.success,delay: 2.0)
    }

}

