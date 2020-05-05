//
//  CourseDetailView.swift
//  College App
//
//  Created by Eoan on 05/05/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import SwiftUI

struct CourseDetailView: View {
    var course: CourseItem
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading) {
                Text(course.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text(course.lecturer)
                    .font(.headline)
                    .fontWeight(.regular)
                    .foregroundColor(Color.gray)
                    .padding(5)
                Image("CC-grad-banner-PNG")
                    .resizable()
                    .scaledToFit()
                Text(course.description)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .padding(20)
        }
    }
}

struct CourseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetailView(course: CourseModel().courseItems[0])
    }
}
