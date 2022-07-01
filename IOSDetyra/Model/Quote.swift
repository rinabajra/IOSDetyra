//
//  Quote.swift
//  IOSDetyra
//
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
