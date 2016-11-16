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
        let leftItemButton = UIButton()
        leftItemButton.setImage(UIImage(named:"logo"), for: UIControlState.normal)
        leftItemButton.sizeToFit()
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftItemButton)
        
        let historyBtn = UIButton()
        let size = CGSize(width: 40, height: 40)
        let point = CGPoint(x: 0, y: 0)
        
        historyBtn.setImage(UIImage(named:"image_my_history"), for: UIControlState.normal)
        historyBtn.setImage(UIImage(named:"Image_my_history_click"), for: UIControlState.highlighted)
        historyBtn.frame = CGRect(origin: point, size: size);
        
        let qrcodeBtn = UIButton()
        qrcodeBtn.setImage(UIImage(named:"Image_scan"), for: UIControlState.normal)
        qrcodeBtn.setImage(UIImage(named:"Image_scan_click"), for: UIControlState.highlighted)
        qrcodeBtn.frame = CGRect(origin: point, size: size);
        
        let searchBtn = UIButton()
        searchBtn.setImage(UIImage(named:"btn_search"), for: UIControlState.normal)
        searchBtn.setImage(UIImage(named:"btn_search_clicked"), for: UIControlState.highlighted)
        searchBtn.frame = CGRect(origin: point, size: size);
        
        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: historyBtn), UIBarButtonItem(customView: qrcodeBtn), UIBarButtonItem(customView: searchBtn)]
    }
    
}
