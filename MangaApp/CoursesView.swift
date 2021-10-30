//
//  CoursesView.swift
//  MangaApp
//
//  Created by George Davis IV on 10/25/21.
//
//

import SwiftUI

struct CoursesView: View {
    //Set so that the state is off by default
    @State var show = false
    
    var body: some View {
        ZStack {
            CourseItem()
                .frame(width: 335, height: 250)
            VStack {
                if show {
                    CourseItem()
                        //Makes sure the card slides in from the Right side and full screen mode
                        .transition(.move(edge: .trailing))
                        //Provides full screen mode
                        .edgesIgnoringSafeArea(.all)
                        //.zIndex used to fix the positioning of where the car disappears ON TOP only
                        //.zIndex(1)
                }
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
                //Everytime we tap on the card it will be shown
                show.toggle()
            }
        }
        //.animation(.spring())
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
