//
//  CourseRow.swift
//  MangaApp
//
//  Created by George Davis IV on 10/24/21.
//

import SwiftUI

struct CourseRow: View {
    var body: some View {
        Image(systemName: "paperplane.circle.fill")
            //Rendering mode changes the color 
            .renderingMode(.original)
            .imageScale(.large)
    }
}

struct CourseRow_Previews: PreviewProvider {
    static var previews: some View {
        CourseRow()
    }
}
