//
//  ContentView.swift
//  College App
//
//  Created by Eoan on 05/05/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var courseList = CourseModel()
    var body: some View {
        VStack {
            NavigationView{
                List(courseList.courseItems) {item in
                    NavigationLink(destination: CourseDetailView(course: item)) {
                        CourseRowView(course: item)
                            .listRowInsets(EdgeInsets())
                    }
                }
            .navigationBarTitle("Courses")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
