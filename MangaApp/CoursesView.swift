//
//  CoursesView.swift
//  MangaApp
//
//  Created by George Davis IV on 10/25/21.
//

import SwiftUI

struct CoursesView: View {
    var body: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            CourseRow()
        }
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
