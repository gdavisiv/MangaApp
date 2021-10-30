//
//  CourseList.swift
//  MangaApp
//
//  Created by George Davis IV on 10/28/21.
//
//

import SwiftUI

struct CourseList: View {
    //Needed to run on iOS and MAC
    @ViewBuilder
    var body: some View {
        #if os(iOS)
        content
            .listStyle(InsetGroupedListStyle())
        #else
        content
            .frame(minWidth: 800, minHeight: 600)
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

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseList()
    }
}
