//
//  HomeViewController.swift
//  DouyuSwift
//
//  Created by manito on 16/11/16.
//  Copyright © 2016年 Kenway. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }

}

extension HomeViewController {
   internal func setupUI() {
        setNavigation()
    }
    
    private func setNavigation() {
//        let leftItemButton = UIButton()
//        leftItemButton.setImage(UIImage(named:"logo"), for: UIControlState.normal)
//        leftItemButton.sizeToFit()
//        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftItemButton)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(normalImage: "logo")
        
        let size = CGSize(width: 40, height: 40)
        
        let historyItem = UIBarButtonItem(normalImage: "image_my_history", highlightedImage: "Image_my_history_click", size: size)
        let qrcodeItem = UIBarButtonItem(normalImage: "Image_scan", highlightedImage: "Image_scan_click", size: size)
        let searchItem = UIBarButtonItem(normalImage: "btn_search", highlightedImage: "btn_search_clicked", size: size)
//        
//        
//        let historyItem = UIBarButtonItem.createItem(normalImage: "image_my_history", highlightedImage: "Image_my_history_click", size: size)
//        let qrcodeItem = UIBarButtonItem.createItem(normalImage: "Image_scan", highlightedImage: "Image_scan_click", size: size)
//        let searchItem = UIBarButtonItem.createItem(normalImage: "btn_search", highlightedImage: "btn_search_clicked", size: size)
        
        navigationItem.rightBarButtonItems = [historyItem, qrcodeItem,searchItem]
    }
    
}
