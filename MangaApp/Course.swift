//
//  Course.swift
//  MangaApp
//
//  Created by George Davis IV on 11/1/21.
//

import SwiftUI

struct Course: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var image: String
    var color: Color
}

//Code needed for Color Literal
//Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))

var courses = [
    Course(
        title: "All Rounder",
        subtitle: "A world full of zombies.  But this apocolypse... is worth trying??",
        image: "Illustration 1",
        color: Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
    ),
    
    Course(
        title: "All Rounder",
        subtitle: "A world full of zombies.  But this apocolypse... is worth trying??",
        image: "Illustration 1",
        color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
    ),
    
    Course(
        title: "All Rounder",
        subtitle: "A world full of zombies.  But this apocolypse... is worth trying??",
        image: "Illustration 1",
        color: Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
    ),
    
    Course(
        title: "All Rounder",
        subtitle: "A world full of zombies.  But this apocolypse... is worth trying??",
        image: "Illustration 1",
        color: Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))
    ),
    
    Course(
        title: "All Rounder",
        subtitle: "A world full of zombies.  But this apocolypse... is worth trying??",
        image: "Illustration 1",
        color: Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1))
    ),
    
    Course(
        title: "All Rounder",
        subtitle: "A world full of zombies.  But this apocolypse... is worth trying??",
        image: "Illustration 1",
        color: Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
    ),
    
    Course(
        title: "All Rounder",
        subtitle: "A world full of zombies.  But this apocolypse... is worth trying??",
        image: "Illustration 1",
        color: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1))
    ),
    
    Course(
        title: "All Rounder",
        subtitle: "A world full of zombies.  But this apocolypse... is worth trying??",
        image: "Illustration 1",
        color: Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1))
    ),
    
    Course(
        title: "All Rounder",
        subtitle: "A world full of zombies.  But this apocolypse... is worth trying??",
        image: "Illustration 1",
        color: Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
    )
]
