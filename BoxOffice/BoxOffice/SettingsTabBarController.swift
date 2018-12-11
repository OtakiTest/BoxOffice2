//
//  SettingsTabBarController.swift
//  BoxOffice
//
//  Created by 신재혁 on 12/12/2018.
//  Copyright © 2018 ninetyfivejae. All rights reserved.
//

import Foundation
import UIKit

class SettingsTabBarController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // tell our UITabBarController subclass to handle its own delegate methods
        self.delegate = self
    }
    
    // called whenever a tab button is tapped
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        
        if viewController is ViewController {
            print("First tab")
        } else if viewController is ViewController {
            print("Second tab")
        }
    }
}
