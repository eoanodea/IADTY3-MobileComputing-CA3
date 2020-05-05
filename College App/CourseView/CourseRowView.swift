//
//  CourseRowView.swift
//  College App
//
//  Created by Eoan on 05/05/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import SwiftUI

struct CourseRowView: View {
    var course: CourseItem
    
    var body: some View {
        Text(course.title)
    }
}

struct CourseRowView_Previews: PreviewProvider {
    static var previews: some View {
        CourseRowView(course: CourseModel().courseItems[0])
    }
}
