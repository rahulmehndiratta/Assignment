//
//  UIView+Extensions.swift
//  Assignment
//
//  Created by RahulMehndiratta on 14/06/20.
//  Copyright © 2020 RahulMehndiratta. All rights reserved.
//

import UIKit

extension UIView {
    
    func getShadow(radius: CGFloat, color: UIColor = UIColor.black.withAlphaComponent(0.5)) {
        layer.masksToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = 0.2
        layer.shadowOffset = CGSize(width: -5, height: 1)
        layer.shadowRadius = radius
        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = true ? UIScreen.main.scale : 1
    }
    
    func roundedBorders(radius: CGFloat, borderColor: UIColor = UIColor.clear, borderWidth: CGFloat = 0) {
        layer.cornerRadius = radius
        layer.masksToBounds = true
        layer.borderColor = borderColor.cgColor
        layer.borderWidth = borderWidth
    }
    
    func roundedCorner(cornerRadii: CGFloat, corners: CACornerMask) {
        layer.cornerRadius = cornerRadii
        layer.masksToBounds = true
        self.layer.maskedCorners = corners
    }
}
