//
//  Sidebar.swift
//  MangaApp
//
//  Created by George Davis IV on 10/25/21.
//
//

import SwiftUI

struct Sidebar: View {
    var body: some View {
        NavigationView {
            //Same setup again if the object is an iOS device then use the following content below
            #if os(iOS)
            content
                .navigationTitle("Read More")
            //Else use the following content with appropriate settings for all other devices
            #else
            content
                .frame(minWidth: 200, idealWidth: 250, maxWidth: 300)
            #endif
            
            
            //Possible bug to load content when working wiht iPAD ONLY
            CoursesView()
        }
    }
    var content: some View {
        List {
            //To navigate to a different location thats already created
            NavigationLink(destination: CoursesView()) {
                Label("Manga List", systemImage: "text.book.closed")
            }
            Label("Submit your Manga Here", systemImage: "list.bullet.rectangle")
            Label("Livestream", systemImage: "tv")
            Label("Crypto Wallet", systemImage: "coloncurrencysign.circle")
            Label("Search", systemImage: "magnifyingglass")
        }
        .listStyle(SidebarListStyle())
        .navigationTitle("Manga List")
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}