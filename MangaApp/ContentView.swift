//
//  ContentView.swift
//  MangaApp
//
//  Created by George Davis IV on 10/22/21.
//

import SwiftUI

struct ContentView: View {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .previewLayout(.fixed(width: 200.0, height: 200.0))
                .preferredColorScheme(.dark)
        }
    }
}
