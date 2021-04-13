//
//  Restaurant.swift
//  RxPracticalExample
//
//  Created by 이현호 on 2021/04/13.
//

import Foundation

struct Restaurant: Decodable {
    let name: String
    let cuisine: Cuisine
}

enum Cuisine: String, Decodable {
    case korean1
    case korean2
    case korean3
    case korean4
}
