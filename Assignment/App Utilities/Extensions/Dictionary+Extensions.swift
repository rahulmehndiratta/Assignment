//
//  Dictionary+Extensions.swift
//  Assignment
//
//  Created by RahulMehndiratta on 14/06/20.
//  Copyright © 2020 RahulMehndiratta. All rights reserved.
//

import Foundation

/// This is the parsing of json elements where key must be string and value can be anything
extension Dictionary where Key == String ,Value == Any {
    
    func parse<T: Parsable>(parsable: T.Type) -> T? {
        return T(withJSON: self)
    }
    
    var query: String {
        var string = ""
        self.forEach {
            if !string.isEmpty { string.append("&") }
            string.append("\($0)=\($1)")
        }
        return string
    }
}
