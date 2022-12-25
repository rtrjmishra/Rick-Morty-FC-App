//
//  TabBarVC.swift
//  Rick & Morty FC
//
//  Created by Rituraj Mishra on 25/12/22.
//

import UIKit

final class TabBarVC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabs()
    }
    
    private func setupTabs() {
        let charactersVC = CharactersVC()
        let episodesVC = EpisodesVC()
        let locationsVC = LocationsVC()
        let settingsVC = SettingsVC()
        
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let charactersNavVC = UINavigationController(rootViewController: charactersVC)
        let episodesNavVC = UINavigationController(rootViewController: episodesVC)
        let locationsNavVC = UINavigationController(rootViewController: locationsVC)
        let settingsNavVC = UINavigationController(rootViewController: settingsVC)
        
        let navVC = [charactersNavVC, episodesNavVC, locationsNavVC, settingsNavVC]
        
        charactersNavVC.tabBarItem = UITabBarItem(title: "Characters",
                                                  image: UIImage(systemName: "person.fill"),
                                                  tag: 1)
        episodesNavVC.tabBarItem = UITabBarItem(title: "Episodes",
                                                image: UIImage(systemName: "play.tv"),
                                                tag: 2)
        locationsNavVC.tabBarItem = UITabBarItem(title: "Locations",
                                                 image: UIImage(systemName: "globe"),
                                                 tag: 3)
        settingsNavVC.tabBarItem = UITabBarItem(title: "Settings",
                                                image: UIImage(systemName: "gear"),
                                                tag: 4)
        
        for nav in navVC {
            nav.navigationBar.prefersLargeTitles = true
        }
        setViewControllers(navVC, animated: true)
    }
    
}

