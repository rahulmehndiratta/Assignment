//
//  StyleGuides.swift
//  Assignment
//
//  Created by RahulMehndiratta on 14/06/20.
//  Copyright © 2020 RahulMehndiratta. All rights reserved.
//

import UIKit

extension UIColor {
    
    static var navBarColor: UIColor {
        return UIColor.systemBlue
    }
    
    func with(alpha: CGFloat) {
        self.withAlphaComponent(alpha)
    }
    
    static var placeholderColor: UIColor {
        return UIColor.black.withAlphaComponent(0.7)
    }
}

extension UIFont {
   
    static var titleFont: UIFont {
        return UIFont.systemFont(ofSize: 17, weight: .bold)
    }
    
    static var regularFont: UIFont {
        return UIFont.systemFont(ofSize: 17, weight: .regular)
    }
}
