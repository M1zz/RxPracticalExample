//
//  File.swift
//  RxPracticalExample
//
//  Created by 이현호 on 2021/04/13.
//

import Foundation
import RxSwift

class RestaurantService {
    
    func fetchRestarants() -> Observable<[Restaurant]> {
        return Observable.create { observer -> Disposable in
            
            
            guard let path = Bundle.main.path(forResource: "restaurents", ofType: "json") else {
                observer.onError(NSError(domain: "", code: -1, userInfo: nil))
                return Disposables.create { }
            }
            
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let restarants = try JSONDecoder().decode([Restaurant].self, from: data)
                observer.onNext(restarants)
            } catch {
                observer.onError(error)
            }
            
            return Disposables.create { }
        }
    }
}
