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
    //This state will allows us to know if the
    @State var selectedItem: Course? = nil
    //Create a new state to make sure user does not select on another card by mistake
    @State var isDisabled = false
    
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
                            //Starts when use taps the screen
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    //Everytime we tap on the card it will be shown
                                    show.toggle()
                                    selectedItem = item
                                    isDisabled = true
                                }
                            }
                            .disabled(isDisabled)
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
                
            if selectedItem != nil {
                ScrollView {
                    //Use the exclamation because we knwo for sure selectedItem will not be empty
                    CourseItem(course: selectedItem!)
                        //The full screen card will be matched with the first card
                        .matchedGeometryEffect(id: selectedItem!.id, in: namespace)
                        .frame(height: 300)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                //Everytime we tap on the card it will be shown
                                show.toggle()
                                selectedItem = nil
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    isDisabled = false
                                }

                            }
                        }
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
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
