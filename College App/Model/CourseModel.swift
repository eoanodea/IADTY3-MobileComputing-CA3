//
//  CourseModel.swift
//  College App
//
//  Created by Eoan on 05/05/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import Foundation

struct CourseItem: Codable, Identifiable {
    var id:Int
    var title:String
    var description:String
    var lecturer:String
}

struct CourseItems: Codable {
    var courses: [CourseItem] = []
}

class CourseModel {
    //Assign the structs to variables
    private var courses = CourseItems()
    var courseItems: [CourseItem] {
        courses.courses
    }
    //Run the load data function
    init() {
        loadData()
    }
    //Parse the data from the JSON Array
    func loadData() {
        do {
            try courses = JSONDecoder().decode(CourseItems.self, from: data)
        } catch let error as NSError {
            print("Error reading JSON: \(error.localizedDescription)")
        }
    }
}

let data = """
{"courses": [{"id":0,"title":"Creative Computing","description":"Modern computing is a thriving and dynamic area to study and work that allows individuals to apply their creativity. This practical computing course provides you with the skills and knowledge to design and program solutions for business and the future. In creative computing you will develop computing skills, while tapping into your creativity, imagination, and interests. You will work in small classes and state of the art computer labs within a friendly and supportive environment.","lecturer":"Ryan Graves"},{"id":1,"title":"3D Animation","description":"This course is an advanced practical programme that teaches the skills needed to excel in the world of 3D Animation. Learning in a digital studio environment from lecturers and practitioners who are active in industry, you will get technical and production skills plus a thorough critical understanding of the modern animation landscape. This is a shared MA programme with Sheridan College Ontario and welcomes Irish, Canadian and international students to the full programme.","lecturer":"Ross MacDonald"},{"id":2,"title":"Applied Digital Business","description":"Interested in Digital Business and Marketing?This one-year course (Level 8 - 30 credits) will equip you with strong skills in digital business. It will give you an in-depth knowledge of the digital landscape and the latest digital tools and techniques.","lecturer":"John Clovux"},{"id":3,"title":"Creative Media Technologies","description":"Students study programming, electronics, audio and video technologies and have the opportunity to apply this knowledge in a range of practical environments. These range from the electronics labs of IADT to the studio environment of the National Film School. Students learn by doing; they invent, create and explore emergent technologies from 3D printers and digital fabrication to the Internet of Things.","lecturer":"Ultan Johnson"}]}
""".data(using: .utf8)!
