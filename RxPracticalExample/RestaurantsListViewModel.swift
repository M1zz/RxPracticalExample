//
//  RestaurantsListViewModel.swift
//  RxPracticalExample
//
//  Created by 이현호 on 2021/04/14.
//

import Foundation
import RxSwift

final class RestaurantsListViewModel {
    let title = "Restaurants"
    
    private let restaurantService: RestaurantServiceProtocol
    
    init(restaurantService: RestaurantServiceProtocol = RestaurantService()) {
        self.restaurantService = restaurantService
    }
    
    func fetchRestaurantViewModels() -> Observable<[RestaurantViewModel]> {
        restaurantService.fetchRestarants().map{ $0.map { RestaurantViewModel(restaurant: $0) } }
    }
}
