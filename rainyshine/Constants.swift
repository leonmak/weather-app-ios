//
//  Constants.swift
//  rainyshine
//
//  Created by Leon on 9/12/16.
//  Copyright © 2016 Leon. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "1963e97d5320896a495bf3de9b34964c"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)1.3521\(LONGITUDE)103.8198\(APP_ID)\(API_KEY)&units=metric"
