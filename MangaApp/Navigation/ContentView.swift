//
//  ContentView.swift
//  MangaApp
//
//  Created by George Davis IV on 10/22/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        #if os(iOS)
        Sidebar()
        #else
        Sidebar()
            .frame(minWidth: 1000, minHeight: 600)
        #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            //ContentView()
                //.previewLayout(.fixed(width: 200.0, height: 200.0))
                //.preferredColorScheme(.dark)
        }
    }
}
