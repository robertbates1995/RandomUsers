//
//  User.swift
//  RandomUsers
//
//  Created by Robert Bates on 10/27/22.
//

import Foundation

struct User: Identifiable {
    let id: String
    let name: Name
}

struct Name {
    let title: String
    let first: String
    let last: String
}
