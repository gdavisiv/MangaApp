//
//  Course.swift
//  MangaApp
//
//  Created by George Davis IV on 11/1/21.
//

import SwiftUI

struct course: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var image: String
    var color: Color
}

var courses = [
    Course(
        title: "",
        subtitle: "",
        image: "",
        color: Color()
    ),
]
