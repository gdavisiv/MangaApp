//
//  CourseItem.swift
//  MangaApp
//
//  Created by George Davis IV on 10/28/21.
//

import SwiftUI

struct CourseItem: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            //Created a card fully adaptable for all screens in iOS
            Spacer()
            HStack {
                Spacer()
                Image("Illustration 1")
                    //Used to resize the image
                    .resizable()
                    //Used to fit the image to specific Ratio
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            Text("Manga Shop!")
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            // "/n" adds a nice break see sentence below
            Text("Your place to read/share and \nEarn money from your comics!")
                .font(.footnote)
                .foregroundColor(Color.white)
        }
        .padding(.all)
        .background(Color.blue)
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}

struct CourseItem_Previews: PreviewProvider {
    static var previews: some View {
        CourseItem()
    }
}
