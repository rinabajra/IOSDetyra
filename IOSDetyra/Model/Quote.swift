//
//  Quote.swift
//  IOSDetyra
//
//  Created by Ninety L.L.C. on 1.7.22.
//

import Foundation

import Foundation

struct Quote: Identifiable {
    var id = UUID()
    var image: String
}

var quoteList = [
    Quote(image: "quote1"),
    Quote(image: "quote2")
]
