//
//  NetworkResponse.swift
//  Assignment
//
//  Created by RahulMehndiratta on 14/06/20.
//  Copyright © 2020 RahulMehndiratta. All rights reserved.
//

import Foundation

//NOTE: I have just made it simple with few fields because of less time and less requirements.

/** This Class is used to represent the HTTP Response received from the Endpoint*/
class NetworkResponse<T: Parsable> {
    
    var json: [String: Any] = [:]
    
    var data: T? {
        return T(withJSON: json)
    }
    
    var resultType: Result<T, APIError>
    
    init(json: [String: Any], result: Result<T, APIError>) {
        self.json = json
        self.resultType = result
    }
}

