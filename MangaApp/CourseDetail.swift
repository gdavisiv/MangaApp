//
//  CourseDetail.swift
//  MangaApp
//
//  Created by George Davis IV on 11/10/21.
//

import SwiftUI

struct CourseDetail: View {
    var body: some View {
        VStack {
            ScrollView {
                //Use the exclamation because we knwo for sure selectedItem will not be empty
                CourseItem(course: selectedItem!)
                    //The full screen card will be matched with the first card
                    .matchedGeometryEffect(id: selectedItem!.id, in: namespace)
                    .frame(height: 300)
                //Changed the transition to opacity so that it will smoothly scale Animate
                VStack {
                    ForEach(0 ..< 20) { item in
                        CourseRow()
                    }
                }
                .padding()
            }
        }
        .background(Color("Background 1"))
        .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
        .matchedGeometryEffect(id: "container\(selectedItem!.id)", in: namespace)
        //Makes sure the card slides in from the Right side and full screen mode
        //.transition(.move(edge: .trailing))
        //Provides full screen mode
        .edgesIgnoringSafeArea(.all)
    }
}

struct CourseDetail_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetail()
    }
}
