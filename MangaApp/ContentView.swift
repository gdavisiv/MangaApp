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
            Image("Illustration 1")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Manga Shop!")
                .fontWeight(.bold)
            // "/n" adds a nice break see sentence below
            Text("Your place to read/share and \nEarn money from your comics!")
                .font(.footnote)
        }
        .padding(.all)
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
