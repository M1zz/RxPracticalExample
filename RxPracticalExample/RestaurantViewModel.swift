//
//  RestaurantViewModel.swift
//  RxPracticalExample
//
//  Created by 이현호 on 2021/04/14.
//

import Foundation

struct RestaurantViewModel {
    
    private let restaurant: Restaurant
    
    var displayText: String {
        return restaurant.name + " - " + restaurant.cuisine.rawValue.capitalized
    }
    
    init(restaurant: Restaurant) {
        self.restaurant = restaurant
    }
}
