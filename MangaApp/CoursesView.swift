//
//  CoursesView.swift
//  MangaApp
//
//  Created by George Davis IV on 10/25/21.
//

import SwiftUI

struct CoursesView: View {
    //Needed to run on iOS and MAC
    @ViewBuilder
    var body: some View {
        #if os(iOS)
        content
            .listStyle(InsetGroupedListStyle())
        #else
        content
        #endif
    }
    var content: some View {
        List(0 ..< 20) { item in
            CourseRow()
        }
        //Allows the list style to be inset so that its seperated from the top and edges
        .navigationTitle("Most Popular Anime & Manga")
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
