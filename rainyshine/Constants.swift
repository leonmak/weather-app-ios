//
//  Constants.swift
//  rainyshine
//
//  Created by Leon on 9/12/16.
//  Copyright © 2016 Leon. All rights reserved.
//

import Foundation

let BASE_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?"
let BASE_FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "1963e97d5320896a495bf3de9b34964c"
let UNITS = "&units=metric"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_WEATHER_URL)\(LATITUDE)\(Location.sharedInstance.latitude!)\(LONGITUDE)\(Location.sharedInstance.longitude!)\(APP_ID)\(API_KEY)\(UNITS)"

let FORECAST_URL = "\(BASE_FORECAST_URL)\(LATITUDE)\(Location.sharedInstance.latitude!)\(LONGITUDE)\(Location.sharedInstance.longitude!)\(APP_ID)\(API_KEY)\(UNITS)"
