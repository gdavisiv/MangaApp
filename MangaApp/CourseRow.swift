//
//  CourseRow.swift
//  MangaApp
//
//  Created by George Davis IV on 10/24/21.
//
//08:00

import SwiftUI

struct CourseRow: View {
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "paperplane.circle.fill")
                //Rendering mode changes the color
                .renderingMode(.original)
                .frame(width: 48, height: 48)
                .imageScale(.medium)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                
            VStack(alignment: .leading, spacing: 4.0) {
                Text("Manga Online")
                    .font(.subheadline)
                    .bold()
                Text("Description")
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
    }
}

struct CourseRow_Previews: PreviewProvider {
    static var previews: some View {
        CourseRow()
    }
}
