//
//  CourseRow.swift
//  MangaApp
//
//  Created by George Davis IV on 10/24/21.
//

import SwiftUI

struct CourseRow: View {
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "paperplane.circle.fill")
                //Rendering mode changes the color
                .renderingMode(.original)
                .imageScale(.medium)
            VStack(alignment: .leading, spacing: 4.0) {
                Text("Manga Online")
                    .font(.subheadline)
                    .bold()
                Text("Description")
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct CourseRow_Previews: PreviewProvider {
    static var previews: some View {
        CourseRow()
    }
}
