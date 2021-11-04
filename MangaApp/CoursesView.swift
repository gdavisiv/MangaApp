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
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(courses) { item in
                        CourseItem(course: item)
                            //Moves the transition from a seperate card
                            //to the first CourseItem()
                            .matchedGeometryEffect(id: item.id, in: namespace, isSource: !show)
                        .frame(width: 335, height: 250)
                    }
                }
                .frame(maxWidth: .infinity)
            }
            
            if show {
                ScrollView {
                    CourseItem(course: courses[0])
                        //The full screen card will be matched with the first card
                        .matchedGeometryEffect(id: courses[0].id, in: namespace)
                        .frame(height: 300)
                    //Changed the transition to opacity so that it will smoothly scale Animate
                    VStack {
                        ForEach(0 ..< 20) { item in
                            CourseRow()
                        }
                    }
                    .padding()
                }
                .background(Color("Background 1"))
                //AnyTransition allows more targeted Animations to timing/spring/delay
                //
                //Adding Asymetric allows the delay at insertions/beginning and then I removed
                //the delay at removal/reverse of the transition when it goes back to its normal state
                //This ensure that CourseRow doesn't delay 0.3 before transitioning back into CourseItem
                .transition(
                    .asymmetric(
                        insertion:
                            AnyTransition
                                    .opacity
                                    .animation(.spring()
                                        .delay(0.3)),
                        removal:
                            AnyTransition
                                .opacity
                                .animation(.spring())
                    )
                )
                //Makes sure the card slides in from the Right side and full screen mode
                //.transition(.move(edge: .trailing))
                //Provides full screen mode
                .edgesIgnoringSafeArea(.all)
                //.zIndex used to fix the positioning of where the car disappears ON TOP only
                //.zIndex(1)
            }
        }
        //Starts when use taps the screen
        .onTapGesture {
            withAnimation(.spring()) {
                //Everytime we tap on the card it will be shown
                show.toggle()
            }
        }
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
