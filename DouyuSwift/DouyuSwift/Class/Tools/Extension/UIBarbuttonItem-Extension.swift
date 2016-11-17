//
//  UIBarbuttonItem-Extension.swift
//  DouyuSwift
//
//  Created by manito on 16/11/17.
//  Copyright © 2016年 Kenway. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    /*
    class func createItem(normalImage:String, highlightedImage:String, size:CGSize) ->UIBarButtonItem {
        let  btn  = UIButton()
        btn.setImage(UIImage.init(named: normalImage), for: UIControlState.normal)
        btn.setImage(UIImage.init(named: highlightedImage), for: UIControlState.highlighted)
        btn.frame = CGRect(origin: CGPoint.zero, size: size)
        return UIBarButtonItem(customView: btn)
    }
 */
    convenience init(normalImage:String, highlightedImage:String = "", size:CGSize = CGSize.zero) {
        let  btn  = UIButton()
        
        btn.setImage(UIImage.init(named: normalImage), for: UIControlState.normal)
        if (highlightedImage != "") {
            btn.setImage(UIImage.init(named: highlightedImage), for: UIControlState.highlighted)
        }
        if (size == CGSize.zero) {
            btn.sizeToFit()
        } else {
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }
        self.init(customView : btn)
    }
}
