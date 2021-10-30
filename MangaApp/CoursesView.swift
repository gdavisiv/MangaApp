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
    //Where you set a collection of match elements
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            CourseItem()
                //Moves the transition from a seperate card
                //to the first CourseItem()
                .matchedGeometryEffect(id: "ID", in: namespace, isSource: !show)
                .frame(width: 335, height: 250)
            VStack {
                if show {
                    CourseItem()
                        .matchedGeometryEffect(id: "ID", in: namespace)
                        .frame(height: 300)
                        //Changed the transition to opacity so that it will smoothly scale Animate
                        .transition(.opacity)
                        //Makes sure the card slides in from the Right side and full screen mode
                        //.transition(.move(edge: .trailing))
                        //Provides full screen mode
                        .edgesIgnoringSafeArea(.all)
                        //.zIndex used to fix the positioning of where the car disappears ON TOP only
                        //.zIndex(1)
                }
            }
        }
        //Starts when use taps the screen
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
