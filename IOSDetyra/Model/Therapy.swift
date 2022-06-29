//
//  Task.swift
//  IOSDetyra
//
//

import Foundation

struct Therapy: Identifiable {
    var id = UUID()
    var title: String
    var descr: String
    var image: String
    var completed: Bool
}

var therapyList = [Therapy(title: "fdfsdsd", descr: "dsafggag", image: "gdcgs", completed: false),
             Therapy(title: "fdsfsdfdfsdfsdf", descr: "dsafggGSGDSDSDsdgsgag", image: "gdcgs" , completed: false)
                ]
