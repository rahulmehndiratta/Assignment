//
//  Observable.swift
//  Assignment
//
//  Created by RahulMehndiratta on 14/06/20.
//  Copyright © 2020 RahulMehndiratta. All rights reserved.
//

import Foundation

typealias Listner<T> = (T)->Void

/** This Class is used for the property observer which is used to bind view and viewModels
 */
class Observable<T> {
    
    var value: T? {
        willSet {
            if let newVal = newValue {
                listner?(newVal)
            }
        }
    }
    
    var listner: Listner<T>?
    func bind(listner: @escaping Listner<T>) {
        self.listner = listner
    }
}
