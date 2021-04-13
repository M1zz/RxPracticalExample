//
//  ViewController.swift
//  RxPracticalExample
//
//  Created by 이현호 on 2021/04/12.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    let disposeBag = DisposeBag()
    
    static func instantiate() -> ViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let viewController = storyboard.instantiateInitialViewController() as! ViewController
        return viewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let service = RestaurantService()
        service.fetchRestarants().subscribe(onNext: { restaurants in
            print(restaurants)
        }).disposed(by: disposeBag)

    }
}

