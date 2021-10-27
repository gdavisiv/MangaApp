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
            
            //Possible bug to load content when working wiht iPAD ONLY
            CoursesView()
        }
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
