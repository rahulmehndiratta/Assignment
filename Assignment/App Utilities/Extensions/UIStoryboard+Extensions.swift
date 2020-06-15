//
//  UIStoryboard+Extensions.swift
//  Assignment
//
//  Created by RahulMehndiratta on 14/06/20.
//  Copyright © 2020 RahulMehndiratta. All rights reserved.
//

import UIKit

extension UIStoryboard {
   
    static var main: UIStoryboard {
        return UIStoryboard(name: "main", bundle: nil)
    }
    
    func instentiate<T: UIViewController>() -> T {
        return instantiateViewController(identifier: String(describing: T.self))
    }
}
