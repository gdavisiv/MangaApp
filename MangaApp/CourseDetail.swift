//
//  CourseDetail.swift
//  MangaApp
//
//  Created by George Davis IV on 11/10/21.
//

import SwiftUI

struct CourseDetail: View {
    var course: Course = courses[0]
    var namespace: Namespace.ID
    
    var body: some View {
        VStack {
            ScrollView {
                //Use the exclamation because we knwo for sure selectedItem will not be empty
                CourseItem(course: course)
                    //The full screen card will be matched with the first card
                    .matchedGeometryEffect(id: course.id, in: namespace)
                    .frame(height: 300)
                //Changed the transition to opacity so that it will smoothly scale Animate
                VStack {
                    ForEach(courseSections) { item in
                        CourseRow()
                    }
                }
                .padding()
            }
        }
        .background(Color("Background 1"))
        .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
        .matchedGeometryEffect(id: "container\(course.id)", in: namespace)
        //Makes sure the card slides in from the Right side and full screen mode
        //.transition(.move(edge: .trailing))
        //Provides full screen mode
        .edgesIgnoringSafeArea(.all)
    }
}

struct CourseDetail_Previews: PreviewProvider {
    @Namespace static var namespace
    
    static var previews: some View {
        CourseDetail(namespace: namespace)
    }
}
