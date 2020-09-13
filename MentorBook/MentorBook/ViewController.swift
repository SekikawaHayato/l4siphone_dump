//
//  ViewController.swift
//  MentorBook
//
//  Created by 関川隼人 on 2020/09/10.
//  Copyright © 2020 関川隼人. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray:[Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!

    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mentorArray.append(Mentor(name:"ながた",imageName: "nagata.jpg",course: "iPhone"))
        mentorArray.append(Mentor(name:"りょう",imageName: "ryo.jpg",course: "Unity"))
        mentorArray.append(Mentor(name:"たいてぃ",imageName:"taithi.jpg",course: "WebS,WebD"))
        
        setUI()
    }


    func setUI(){
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    @IBAction func mae(){
        index -= 1
        if (index < 0){
            index = mentorArray.count - 1
        }
        setUI()
    }
    
    @IBAction func tugi(){
        index += 1
        if index >= mentorArray.count{
            index = 0
        }
        setUI()
    }
}

