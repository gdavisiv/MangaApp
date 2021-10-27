//
//  CoursesView.swift
//  MangaApp
//
//  Created by George Davis IV on 10/25/21.
//

import SwiftUI

struct CoursesView: View {
    var body: some View {
        List(0 ..< 20) { item in
            CourseRow()
        }
        //Allows the list style to be inset so that its seperated from the top and edges
        .listStyle(InsetGroupedListStyle())
        .navigationTitle("Most Popular Anime & Manga")
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
