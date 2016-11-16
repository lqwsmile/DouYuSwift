//
//  MainViewController.swift
//  DouyuSwift
//
//  Created by manito on 16/11/16.
//  Copyright © 2016年 Kenway. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addChildViewController(storyBoardName: "Home")
        addChildViewController(storyBoardName: "Live")
        addChildViewController(storyBoardName: "Follow")
        addChildViewController(storyBoardName: "Profile")
    }
    
    private func addChildViewController(storyBoardName : String) {
        let childVC = UIStoryboard(name:storyBoardName, bundle:nil).instantiateInitialViewController()!
        addChildViewController(childVC)
    }
}
