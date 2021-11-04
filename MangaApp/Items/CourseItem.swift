//
//  CourseItem.swift
//  MangaApp
//
//  Created by George Davis IV on 10/28/21.
//

import SwiftUI

struct CourseItem: View {
    //Pulling in the newly created database in CourseList
    var course: Course = courses[0]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            //Created a card fully adaptable for all screens in iOS
            Spacer()
            HStack {
                Spacer()
                Image(course.image)
                    //Used to resize the image
                    .resizable()
                    //Used to fit the image to specific Ratio
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            Text(course.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            // "/n" adds a nice break see sentence below
            Text(course.subtitle)
                .font(.footnote)
                .foregroundColor(Color.white)
        }
        .padding(.all)
        .background(course.color)
        .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
        .shadow(color: course.color.opacity(0.3), radius: 20, x: 0, y: 10)
    }
}

struct CourseItem_Previews: PreviewProvider {
    static var previews: some View {
        CourseItem()
    }
}
