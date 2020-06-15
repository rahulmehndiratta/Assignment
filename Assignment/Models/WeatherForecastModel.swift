//
//  WeatherForecastModel.swift
//  Assignment
//
//  Created by RahulMehndiratta on 14/06/20.
//  Copyright © 2020 RahulMehndiratta. All rights reserved.
//

import UIKit


/***
 NOTE: I did not use Codable because unsure results of API, In general i do use codable for json encoding or decoding
 ***/

/** An Enumeration to define the Type of Media*/
enum MediaType: String {
    case pdf, image, video
}

/** This is an Entity Structure to hold the Temperature Details*/
struct Temprature: Parsable {
    
    var min: Double
    var max: Double
    
    init?(withJSON json: [String : Any]) {
        guard let min = json["temp_min"] as? Double,
            let max = json["temp_max"] as? Double else {
                return nil
        }
        self.min = min
        self.max = max
    }
}

/** This is an Entity Structure to hold the Weather Details*/
struct Weather: Parsable {
   
    var id: Int?
    var description: String?
    
    init?(withJSON json: [String : Any]) {
        guard let description = json["description"] as? String else {
            return nil
        }
        self.description = description
        id = json["id"] as? Int
    }
}

/** This is an Entity Structure to hold the Wind Details*/
struct Wind: Parsable {
    
    var speed: Double?
    var deg: Double?
    
    init?(withJSON json: [String : Any]) {
        guard let speed = json["speed"] as? Double,
            let deg = json["deg"] as? Double else {
                return nil
        }
        self.speed = speed
        self.deg = deg
        
    }
}

/** This is an Entity Structure to hold the Forecast Details*/
struct Forecast: Parsable {
    
    var wind: Wind?
    var weather: Weather?
    var temp: Temprature?
    var date: String?
    var name: String?
    var dateFormated: String? {
        return date?.changeDateFormat(fromFromat: .yyyyMMddHHMMSS, toFormat: .MMddyyyyhhmm_a)
    }
    
    init?(withJSON json: [String : Any]) {
        guard let wind = json["wind"] as? [String: Any],
            let weather = json["weather"] as? [[String: Any]],
            let temp = json["main"] as? [String: Any] else {
                return nil
        }
        self.wind = Wind(withJSON: wind)
        self.weather = weather.parseList(type: Weather.self).first
        self.temp = Temprature(withJSON: temp)
        self.date = json["dt_txt"] as? String
        self.name = json["name"] as? String
    }
}
