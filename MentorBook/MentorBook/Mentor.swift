//
//  Mentor.swift
//  MentorBook
//
//  Created by 関川隼人 on 2020/09/10.
//  Copyright © 2020 関川隼人. All rights reserved.
//

import UIKit

class Mentor{
    
    var name: String!
    
    var course: String!
    
    var imageName: String!
    
    init(name: String,imageName: String, course: String){
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    
    func getImage() -> UIImage{
        return UIImage(named: imageName)!
    }
}
