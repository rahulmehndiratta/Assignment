//
//  NetworkContants.swift
//  Assignment
//
//  Created by RahulMehndiratta on 14/06/20.
//  Copyright © 2020 RahulMehndiratta. All rights reserved.
//

import Foundation

let WEB_SERVICE_URL = "http://api.openweathermap.org/data/2.5/"
let PERIOD = 7
let API_KEY = "6093f0957f2ab5538be5d4c5624513a3"

enum APIPoint: String {
    typealias RawValue = String
    case weather = "weather?"
    case forecast = "forecast?"
}
