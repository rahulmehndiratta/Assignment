//
//  Parsable.swift
//  Assignment
//
//  Created by RahulMehndiratta on 14/06/20.
//  Copyright © 2020 RahulMehndiratta. All rights reserved.
//

import Foundation


/** This is a protocol which is used for data parsing to provide Generic effect for responses \
     Conform this protocol for Entity to hold the reponse received from the Server
 */
protocol Parsable {
    
    /**
     An Initialzer that implements the parsing procedure the response received from the HTTP Response
        - withJSON: JSON Response Received from HTTP Endpoint of type Dictionary
     */
    init?(withJSON json: [String: Any])
}
