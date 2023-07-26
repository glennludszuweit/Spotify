//
//  ViewController.swift
//  Spotify
//
//  Created by Glenn Ludszuweit on 26/07/2023.
//

import UIKit

class MainController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeVC = UINavigationController(rootViewController: HomeViewController())
        homeVC.tabBarItem.image = UIImage(systemName: "house")
        homeVC.title = "Home"

        let searchVC = UINavigationController(rootViewController: SearchViewController())
        searchVC.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        searchVC.title = "Search"

        let libraryVC = UINavigationController(rootViewController: LibraryViewController())
        libraryVC.tabBarItem.image = UIImage(systemName: "list.triangle")
        libraryVC.title = "Library"
        
        tabBar.tintColor = .label
        setViewControllers([homeVC, searchVC, libraryVC], animated: true)
    }
}

