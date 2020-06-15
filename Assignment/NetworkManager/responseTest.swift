//
//  responseTest.swift
//  DubaiTest
//
//  Created by DMI on 29/12/19.
//  Copyright © 2019 VE. All rights reserved.
//

import Foundation


let dict: [String: Any] = [
    "cod": "200",
    "message": 0,
    "cnt": 40,
    "list": [
        [
            "dt": 1577642400,
            "main": [
                "temp": 279.72,
                "feels_like": 277.25,
                "temp_min": 278.81,
                "temp_max": 279.72,
                "pressure": 1028,
                "sea_level": 1028,
                "grnd_level": 987,
                "humidity": 81,
                "temp_kf": 0.91
            ],
            "weather": [
                [
                    "id": 804,
                    "main": "Clouds",
                    "description": "overcast clouds",
                    "icon": "04n"
                ]
            ],
            "clouds": [
                "all": 97
            ],
            "wind": [
                "speed": 1.53,
                "deg": 76
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2019-12-29 18:00:00"
        ],
        [
            "dt": 1577653200,
            "main": [
                "temp": 279.29,
                "feels_like": 277.41,
                "temp_min": 278.61,
                "temp_max": 279.29,
                "pressure": 1028,
                "sea_level": 1028,
                "grnd_level": 987,
                "humidity": 81,
                "temp_kf": 0.68
            ],
            "weather": [
                [
                    "id": 804,
                    "main": "Clouds",
                    "description": "overcast clouds",
                    "icon": "04n"
                ]
            ],
            "clouds": [
                "all": 97
            ],
            "wind": [
                "speed": 0.57,
                "deg": 65
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2019-12-29 21:00:00"
        ],
        [
            "dt": 1577664000,
            "main": [
                "temp": 282.25,
                "feels_like": 280.32,
                "temp_min": 281.79,
                "temp_max": 282.25,
                "pressure": 1027,
                "sea_level": 1027,
                "grnd_level": 986,
                "humidity": 73,
                "temp_kf": 0.46
            ],
            "weather": [
                [
                    "id": 804,
                    "main": "Clouds",
                    "description": "overcast clouds",
                    "icon": "04d"
                ]
            ],
            "clouds": [
                "all": 98
            ],
            "wind": [
                "speed": 1.02,
                "deg": 220
            ],
            "sys": [
                "pod": "d"
            ],
            "dt_txt": "2019-12-30 00:00:00"
        ],
        [
            "dt": 1577674800,
            "main": [
                "temp": 281.65,
                "feels_like": 279.22,
                "temp_min": 281.42,
                "temp_max": 281.65,
                "pressure": 1025,
                "sea_level": 1025,
                "grnd_level": 984,
                "humidity": 77,
                "temp_kf": 0.23
            ],
            "weather": [
                [
                    "id": 500,
                    "main": "Rain",
                    "description": "light rain",
                    "icon": "10d"
                ]
            ],
            "clouds": [
                "all": 100
            ],
            "wind": [
                "speed": 1.78,
                "deg": 275
            ],
            "rain": [
                "3h": 0.19
            ],
            "sys": [
                "pod": "d"
            ],
            "dt_txt": "2019-12-30 03:00:00"
        ],
        [
            "dt": 1577685600,
            "main": [
                "temp": 280.03,
                "feels_like": 277.94,
                "temp_min": 280.03,
                "temp_max": 280.03,
                "pressure": 1023,
                "sea_level": 1023,
                "grnd_level": 983,
                "humidity": 93,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 500,
                    "main": "Rain",
                    "description": "light rain",
                    "icon": "10d"
                ]
            ],
            "clouds": [
                "all": 100
            ],
            "wind": [
                "speed": 1.62,
                "deg": 261
            ],
            "rain": [
                "3h": 2.44
            ],
            "sys": [
                "pod": "d"
            ],
            "dt_txt": "2019-12-30 06:00:00"
        ],
        [
            "dt": 1577696400,
            "main": [
                "temp": 281.19,
                "feels_like": 278.04,
                "temp_min": 281.19,
                "temp_max": 281.19,
                "pressure": 1022,
                "sea_level": 1022,
                "grnd_level": 981,
                "humidity": 93,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 500,
                    "main": "Rain",
                    "description": "light rain",
                    "icon": "10n"
                ]
            ],
            "clouds": [
                "all": 100
            ],
            "wind": [
                "speed": 3.49,
                "deg": 249
            ],
            "rain": [
                "3h": 1.06
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2019-12-30 09:00:00"
        ],
        [
            "dt": 1577707200,
            "main": [
                "temp": 281.54,
                "feels_like": 279.26,
                "temp_min": 281.54,
                "temp_max": 281.54,
                "pressure": 1020,
                "sea_level": 1020,
                "grnd_level": 980,
                "humidity": 97,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 500,
                    "main": "Rain",
                    "description": "light rain",
                    "icon": "10n"
                ]
            ],
            "clouds": [
                "all": 100
            ],
            "wind": [
                "speed": 2.58,
                "deg": 259
            ],
            "rain": [
                "3h": 0.38
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2019-12-30 12:00:00"
        ],
        [
            "dt": 1577718000,
            "main": [
                "temp": 283.05,
                "feels_like": 280.77,
                "temp_min": 283.05,
                "temp_max": 283.05,
                "pressure": 1017,
                "sea_level": 1017,
                "grnd_level": 976,
                "humidity": 97,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 804,
                    "main": "Clouds",
                    "description": "overcast clouds",
                    "icon": "04n"
                ]
            ],
            "clouds": [
                "all": 100
            ],
            "wind": [
                "speed": 3.11,
                "deg": 261
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2019-12-30 15:00:00"
        ],
        [
            "dt": 1577728800,
            "main": [
                "temp": 283.87,
                "feels_like": 281.13,
                "temp_min": 283.87,
                "temp_max": 283.87,
                "pressure": 1015,
                "sea_level": 1015,
                "grnd_level": 974,
                "humidity": 96,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 804,
                    "main": "Clouds",
                    "description": "overcast clouds",
                    "icon": "04n"
                ]
            ],
            "clouds": [
                "all": 100
            ],
            "wind": [
                "speed": 4.02,
                "deg": 245
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2019-12-30 18:00:00"
        ],
        [
            "dt": 1577739600,
            "main": [
                "temp": 283.98,
                "feels_like": 279.47,
                "temp_min": 283.98,
                "temp_max": 283.98,
                "pressure": 1014,
                "sea_level": 1014,
                "grnd_level": 972,
                "humidity": 84,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 802,
                    "main": "Clouds",
                    "description": "scattered clouds",
                    "icon": "03n"
                ]
            ],
            "clouds": [
                "all": 36
            ],
            "wind": [
                "speed": 5.86,
                "deg": 247
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2019-12-30 21:00:00"
        ],
        [
            "dt": 1577750400,
            "main": [
                "temp": 286.4,
                "feels_like": 275.75,
                "temp_min": 286.4,
                "temp_max": 286.4,
                "pressure": 1013,
                "sea_level": 1013,
                "grnd_level": 971,
                "humidity": 47,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 802,
                    "main": "Clouds",
                    "description": "scattered clouds",
                    "icon": "03d"
                ]
            ],
            "clouds": [
                "all": 42
            ],
            "wind": [
                "speed": 12.87,
                "deg": 248
            ],
            "sys": [
                "pod": "d"
            ],
            "dt_txt": "2019-12-31 00:00:00"
        ],
        [
            "dt": 1577761200,
            "main": [
                "temp": 286.58,
                "feels_like": 275.08,
                "temp_min": 286.58,
                "temp_max": 286.58,
                "pressure": 1011,
                "sea_level": 1011,
                "grnd_level": 969,
                "humidity": 48,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                ]
            ],
            "clouds": [
                "all": 5
            ],
            "wind": [
                "speed": 14.19,
                "deg": 250
            ],
            "sys": [
                "pod": "d"
            ],
            "dt_txt": "2019-12-31 03:00:00"
        ],
        [
            "dt": 1577772000,
            "main": [
                "temp": 284.22,
                "feels_like": 275.76,
                "temp_min": 284.22,
                "temp_max": 284.22,
                "pressure": 1013,
                "sea_level": 1013,
                "grnd_level": 970,
                "humidity": 41,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                ]
            ],
            "clouds": [
                "all": 2
            ],
            "wind": [
                "speed": 8.92,
                "deg": 247
            ],
            "sys": [
                "pod": "d"
            ],
            "dt_txt": "2019-12-31 06:00:00"
        ],
        [
            "dt": 1577782800,
            "main": [
                "temp": 279.67,
                "feels_like": 274.92,
                "temp_min": 279.67,
                "temp_max": 279.67,
                "pressure": 1018,
                "sea_level": 1018,
                "grnd_level": 975,
                "humidity": 64,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                ]
            ],
            "clouds": [
                "all": 0
            ],
            "wind": [
                "speed": 3.99,
                "deg": 122
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2019-12-31 09:00:00"
        ],
        [
            "dt": 1577793600,
            "main": [
                "temp": 278.08,
                "feels_like": 274.1,
                "temp_min": 278.08,
                "temp_max": 278.08,
                "pressure": 1020,
                "sea_level": 1020,
                "grnd_level": 977,
                "humidity": 66,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                ]
            ],
            "clouds": [
                "all": 0
            ],
            "wind": [
                "speed": 2.67,
                "deg": 133
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2019-12-31 12:00:00"
        ],
        [
            "dt": 1577804400,
            "main": [
                "temp": 277.17,
                "feels_like": 273.77,
                "temp_min": 277.17,
                "temp_max": 277.17,
                "pressure": 1022,
                "sea_level": 1022,
                "grnd_level": 979,
                "humidity": 71,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                ]
            ],
            "clouds": [
                "all": 0
            ],
            "wind": [
                "speed": 1.87,
                "deg": 157
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2019-12-31 15:00:00"
        ],
        [
            "dt": 1577815200,
            "main": [
                "temp": 277.08,
                "feels_like": 273.42,
                "temp_min": 277.08,
                "temp_max": 277.08,
                "pressure": 1022,
                "sea_level": 1022,
                "grnd_level": 980,
                "humidity": 78,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 801,
                    "main": "Clouds",
                    "description": "few clouds",
                    "icon": "02n"
                ]
            ],
            "clouds": [
                "all": 12
            ],
            "wind": [
                "speed": 2.49,
                "deg": 162
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2019-12-31 18:00:00"
        ],
        [
            "dt": 1577826000,
            "main": [
                "temp": 276.89,
                "feels_like": 273.59,
                "temp_min": 276.89,
                "temp_max": 276.89,
                "pressure": 1024,
                "sea_level": 1024,
                "grnd_level": 982,
                "humidity": 82,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 804,
                    "main": "Clouds",
                    "description": "overcast clouds",
                    "icon": "04n"
                ]
            ],
            "clouds": [
                "all": 86
            ],
            "wind": [
                "speed": 2.08,
                "deg": 135
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2019-12-31 21:00:00"
        ],
        [
            "dt": 1577836800,
            "main": [
                "temp": 279.76,
                "feels_like": 277.1,
                "temp_min": 279.76,
                "temp_max": 279.76,
                "pressure": 1025,
                "sea_level": 1025,
                "grnd_level": 982,
                "humidity": 71,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 803,
                    "main": "Clouds",
                    "description": "broken clouds",
                    "icon": "04d"
                ]
            ],
            "clouds": [
                "all": 69
            ],
            "wind": [
                "speed": 1.34,
                "deg": 133
            ],
            "sys": [
                "pod": "d"
            ],
            "dt_txt": "2020-01-01 00:00:00"
        ],
        [
            "dt": 1577847600,
            "main": [
                "temp": 282.13,
                "feels_like": 279.63,
                "temp_min": 282.13,
                "temp_max": 282.13,
                "pressure": 1022,
                "sea_level": 1022,
                "grnd_level": 981,
                "humidity": 64,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 500,
                    "main": "Rain",
                    "description": "light rain",
                    "icon": "10d"
                ]
            ],
            "clouds": [
                "all": 82
            ],
            "wind": [
                "speed": 1.31,
                "deg": 121
            ],
            "rain": [
                "3h": 0.06
            ],
            "sys": [
                "pod": "d"
            ],
            "dt_txt": "2020-01-01 03:00:00"
        ],
        [
            "dt": 1577858400,
            "main": [
                "temp": 282.65,
                "feels_like": 279.17,
                "temp_min": 282.65,
                "temp_max": 282.65,
                "pressure": 1021,
                "sea_level": 1021,
                "grnd_level": 979,
                "humidity": 42,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 802,
                    "main": "Clouds",
                    "description": "scattered clouds",
                    "icon": "03d"
                ]
            ],
            "clouds": [
                "all": 49
            ],
            "wind": [
                "speed": 1.61,
                "deg": 250
            ],
            "sys": [
                "pod": "d"
            ],
            "dt_txt": "2020-01-01 06:00:00"
        ],
        [
            "dt": 1577869200,
            "main": [
                "temp": 278.19,
                "feels_like": 275.69,
                "temp_min": 278.19,
                "temp_max": 278.19,
                "pressure": 1022,
                "sea_level": 1022,
                "grnd_level": 979,
                "humidity": 56,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                ]
            ],
            "clouds": [
                "all": 0
            ],
            "wind": [
                "speed": 0.17,
                "deg": 287
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2020-01-01 09:00:00"
        ],
        [
            "dt": 1577880000,
            "main": [
                "temp": 277.52,
                "feels_like": 274.94,
                "temp_min": 277.52,
                "temp_max": 277.52,
                "pressure": 1022,
                "sea_level": 1022,
                "grnd_level": 979,
                "humidity": 66,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                ]
            ],
            "clouds": [
                "all": 0
            ],
            "wind": [
                "speed": 0.56,
                "deg": 103
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2020-01-01 12:00:00"
        ],
        [
            "dt": 1577890800,
            "main": [
                "temp": 277.03,
                "feels_like": 274.19,
                "temp_min": 277.03,
                "temp_max": 277.03,
                "pressure": 1022,
                "sea_level": 1022,
                "grnd_level": 979,
                "humidity": 67,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                ]
            ],
            "clouds": [
                "all": 0
            ],
            "wind": [
                "speed": 0.89,
                "deg": 179
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2020-01-01 15:00:00"
        ],
        [
            "dt": 1577901600,
            "main": [
                "temp": 276.61,
                "feels_like": 273.73,
                "temp_min": 276.61,
                "temp_max": 276.61,
                "pressure": 1022,
                "sea_level": 1022,
                "grnd_level": 980,
                "humidity": 69,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                ]
            ],
            "clouds": [
                "all": 0
            ],
            "wind": [
                "speed": 0.94,
                "deg": 167
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2020-01-01 18:00:00"
        ],
        [
            "dt": 1577912400,
            "main": [
                "temp": 276.16,
                "feels_like": 273.44,
                "temp_min": 276.16,
                "temp_max": 276.16,
                "pressure": 1023,
                "sea_level": 1023,
                "grnd_level": 981,
                "humidity": 72,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                ]
            ],
            "clouds": [
                "all": 0
            ],
            "wind": [
                "speed": 0.75,
                "deg": 236
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2020-01-01 21:00:00"
        ],
        [
            "dt": 1577923200,
            "main": [
                "temp": 280.39,
                "feels_like": 277.72,
                "temp_min": 280.39,
                "temp_max": 280.39,
                "pressure": 1024,
                "sea_level": 1024,
                "grnd_level": 982,
                "humidity": 62,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                ]
            ],
            "clouds": [
                "all": 2
            ],
            "wind": [
                "speed": 1.07,
                "deg": 104
            ],
            "sys": [
                "pod": "d"
            ],
            "dt_txt": "2020-01-02 00:00:00"
        ],
        [
            "dt": 1577934000,
            "main": [
                "temp": 282,
                "feels_like": 279.3,
                "temp_min": 282,
                "temp_max": 282,
                "pressure": 1023,
                "sea_level": 1023,
                "grnd_level": 982,
                "humidity": 63,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 803,
                    "main": "Clouds",
                    "description": "broken clouds",
                    "icon": "04d"
                ]
            ],
            "clouds": [
                "all": 64
            ],
            "wind": [
                "speed": 1.52,
                "deg": 164
            ],
            "sys": [
                "pod": "d"
            ],
            "dt_txt": "2020-01-02 03:00:00"
        ],
        [
            "dt": 1577944800,
            "main": [
                "temp": 281.97,
                "feels_like": 279.25,
                "temp_min": 281.97,
                "temp_max": 281.97,
                "pressure": 1023,
                "sea_level": 1023,
                "grnd_level": 982,
                "humidity": 67,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 803,
                    "main": "Clouds",
                    "description": "broken clouds",
                    "icon": "04d"
                ]
            ],
            "clouds": [
                "all": 81
            ],
            "wind": [
                "speed": 1.75,
                "deg": 180
            ],
            "sys": [
                "pod": "d"
            ],
            "dt_txt": "2020-01-02 06:00:00"
        ],
        [
            "dt": 1577955600,
            "main": [
                "temp": 278.81,
                "feels_like": 276.76,
                "temp_min": 278.81,
                "temp_max": 278.81,
                "pressure": 1024,
                "sea_level": 1024,
                "grnd_level": 982,
                "humidity": 82,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 802,
                    "main": "Clouds",
                    "description": "scattered clouds",
                    "icon": "03n"
                ]
            ],
            "clouds": [
                "all": 45
            ],
            "wind": [
                "speed": 0.74,
                "deg": 240
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2020-01-02 09:00:00"
        ],
        [
            "dt": 1577966400,
            "main": [
                "temp": 277.99,
                "feels_like": 275.89,
                "temp_min": 277.99,
                "temp_max": 277.99,
                "pressure": 1024,
                "sea_level": 1024,
                "grnd_level": 982,
                "humidity": 82,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 802,
                    "main": "Clouds",
                    "description": "scattered clouds",
                    "icon": "03n"
                ]
            ],
            "clouds": [
                "all": 30
            ],
            "wind": [
                "speed": 0.61,
                "deg": 288
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2020-01-02 12:00:00"
        ],
        [
            "dt": 1577977200,
            "main": [
                "temp": 278.77,
                "feels_like": 276.62,
                "temp_min": 278.77,
                "temp_max": 278.77,
                "pressure": 1023,
                "sea_level": 1023,
                "grnd_level": 981,
                "humidity": 79,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 802,
                    "main": "Clouds",
                    "description": "scattered clouds",
                    "icon": "03n"
                ]
            ],
            "clouds": [
                "all": 39
            ],
            "wind": [
                "speed": 0.74,
                "deg": 42
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2020-01-02 15:00:00"
        ],
        [
            "dt": 1577988000,
            "main": [
                "temp": 277.26,
                "feels_like": 274.93,
                "temp_min": 277.26,
                "temp_max": 277.26,
                "pressure": 1022,
                "sea_level": 1022,
                "grnd_level": 980,
                "humidity": 82,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 802,
                    "main": "Clouds",
                    "description": "scattered clouds",
                    "icon": "03n"
                ]
            ],
            "clouds": [
                "all": 34
            ],
            "wind": [
                "speed": 0.78,
                "deg": 151
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2020-01-02 18:00:00"
        ],
        [
            "dt": 1577998800,
            "main": [
                "temp": 278.23,
                "feels_like": 275,
                "temp_min": 278.23,
                "temp_max": 278.23,
                "pressure": 1022,
                "sea_level": 1022,
                "grnd_level": 980,
                "humidity": 80,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 802,
                    "main": "Clouds",
                    "description": "scattered clouds",
                    "icon": "03n"
                ]
            ],
            "clouds": [
                "all": 32
            ],
            "wind": [
                "speed": 2.21,
                "deg": 86
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2020-01-02 21:00:00"
        ],
        [
            "dt": 1578009600,
            "main": [
                "temp": 279.79,
                "feels_like": 276.92,
                "temp_min": 279.79,
                "temp_max": 279.79,
                "pressure": 1022,
                "sea_level": 1022,
                "grnd_level": 980,
                "humidity": 70,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 803,
                    "main": "Clouds",
                    "description": "broken clouds",
                    "icon": "04d"
                ]
            ],
            "clouds": [
                "all": 60
            ],
            "wind": [
                "speed": 1.6,
                "deg": 92
            ],
            "sys": [
                "pod": "d"
            ],
            "dt_txt": "2020-01-03 00:00:00"
        ],
        [
            "dt": 1578020400,
            "main": [
                "temp": 283.18,
                "feels_like": 280.39,
                "temp_min": 283.18,
                "temp_max": 283.18,
                "pressure": 1019,
                "sea_level": 1019,
                "grnd_level": 977,
                "humidity": 56,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 803,
                    "main": "Clouds",
                    "description": "broken clouds",
                    "icon": "04d"
                ]
            ],
            "clouds": [
                "all": 81
            ],
            "wind": [
                "speed": 1.52,
                "deg": 272
            ],
            "sys": [
                "pod": "d"
            ],
            "dt_txt": "2020-01-03 03:00:00"
        ],
        [
            "dt": 1578031200,
            "main": [
                "temp": 282.2,
                "feels_like": 278.84,
                "temp_min": 282.2,
                "temp_max": 282.2,
                "pressure": 1018,
                "sea_level": 1018,
                "grnd_level": 976,
                "humidity": 51,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 803,
                    "main": "Clouds",
                    "description": "broken clouds",
                    "icon": "04d"
                ]
            ],
            "clouds": [
                "all": 64
            ],
            "wind": [
                "speed": 1.85,
                "deg": 279
            ],
            "sys": [
                "pod": "d"
            ],
            "dt_txt": "2020-01-03 06:00:00"
        ],
        [
            "dt": 1578042000,
            "main": [
                "temp": 278.51,
                "feels_like": 276.11,
                "temp_min": 278.51,
                "temp_max": 278.51,
                "pressure": 1018,
                "sea_level": 1018,
                "grnd_level": 976,
                "humidity": 73,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                ]
            ],
            "clouds": [
                "all": 0
            ],
            "wind": [
                "speed": 0.79,
                "deg": 124
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2020-01-03 09:00:00"
        ],
        [
            "dt": 1578052800,
            "main": [
                "temp": 278.08,
                "feels_like": 276.03,
                "temp_min": 278.08,
                "temp_max": 278.08,
                "pressure": 1017,
                "sea_level": 1017,
                "grnd_level": 975,
                "humidity": 76,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                ]
            ],
            "clouds": [
                "all": 0
            ],
            "wind": [
                "speed": 0.32,
                "deg": 146
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2020-01-03 12:00:00"
        ],
        [
            "dt": 1578063600,
            "main": [
                "temp": 277.32,
                "feels_like": 274.36,
                "temp_min": 277.32,
                "temp_max": 277.32,
                "pressure": 1016,
                "sea_level": 1016,
                "grnd_level": 974,
                "humidity": 76,
                "temp_kf": 0
            ],
            "weather": [
                [
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01n"
                ]
            ],
            "clouds": [
                "all": 0
            ],
            "wind": [
                "speed": 1.46,
                "deg": 220
            ],
            "sys": [
                "pod": "n"
            ],
            "dt_txt": "2020-01-03 15:00:00"
        ]
    ],
    "city": [
        "id": 1851632,
        "name": "Shuzenji",
        "coord": [
            "lat": 34.9667,
            "lon": 138.9333
        ],
        "country": "JP",
        "timezone": 32400,
        "sunrise": 1577656288,
        "sunset": 1577691664
    ]
]
