//
//  ViewController.swift
//  RxPracticalExample
//
//  Created by 이현호 on 2021/04/12.
//

import UIKit

class ViewController: UIViewController {

    static func instantiate() -> ViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let viewController = storyboard.instantiateInitialViewController() as! ViewController
        return viewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let service =
    }
}

