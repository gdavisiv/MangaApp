//
//  ContentView.swift
//  MangaApp
//
//  Created by George Davis IV on 10/22/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0){
            Text("Manga Shop!")
                .fontWeight(.bold)
            // "/n" adds a nice break see sentence below
            Text("Your place to read/share and \nEarn money from your comics!")
                .font(.footnote)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
