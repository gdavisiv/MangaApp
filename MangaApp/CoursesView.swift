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
                //'.adaptive' allows the grid to respond to the screen size
                LazyVGrid(
                    columns: [
                        GridItem(.adaptive(minimum: 160), spacing: 16)
                    ],
                    spacing: 16
                ) {
                    ForEach(courses) { item in
                        VStack {
                            CourseItem(course: item)
                                //Moves the transition from a seperate card
                                //to the first CourseItem()
                                .matchedGeometryEffect(id: item.id, in: namespace, isSource: !show)
                                .frame(height: 200)
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
                        //This allows us to mix a string and variable, and match
                        //With the full string container
                        .matchedGeometryEffect(id: "container\(item.id)", in: namespace, isSource: !show)
                    }
                }
                .padding(16)
                .frame(maxWidth: .infinity)
            }
            //This make sure the card is above the rest on the screen
            .zIndex(1)
            
            if selectedItem != nil {
                VStack {
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
                }
                .background(Color("Background 1"))
                .matchedGeometryEffect(id: "container\(selectedItem!.id)", in: namespace)
                //Makes sure the card slides in from the Right side and full screen mode
                //.transition(.move(edge: .trailing))
                //Provides full screen mode
                .edgesIgnoringSafeArea(.all)
                //.zIndex used to fix the positioning of where the car disappears ON TOP only
                .zIndex(2)
            }
        }
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
