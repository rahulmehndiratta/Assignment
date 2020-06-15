//
//  Data+Extensions.swift
//  Assignment
//
//  Created by RahulMehndiratta on 14/06/20.
//  Copyright © 2020 RahulMehndiratta. All rights reserved.
//

import Foundation

/// This is the parsing of json json
extension Data {
    
    func parseData(options:JSONSerialization.ReadingOptions? = nil) throws -> [String: Any]  {
        let options = options ?? JSONSerialization.ReadingOptions(rawValue: 0)
        guard let array = try JSONSerialization.jsonObject(with: self, options: options) as? [String:Any] else {
            return [:]
        }
        return array
    }
}
