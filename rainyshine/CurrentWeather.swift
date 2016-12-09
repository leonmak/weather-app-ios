//
//  CurrentWeather.swift
//  rainyshine
//
//  Created by Leon on 9/12/16.
//  Copyright © 2016 Leon. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

class CurrentWeather {
    var _cityName: String!
    var _date: String!
    var _weatherType: String!
    var _currentTemp: Double!
    
    var cityName: String {
        if _cityName == nil {
            _cityName = ""
        }
        return _cityName
    }
    
    var currentTemp: Double {
        if _currentTemp == nil {
            _currentTemp = 0.0
        }
        return _currentTemp
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        let currentDate = dateFormatter.string(from: Date())
        self._date = "Today, \(currentDate)"
        
        return _date
    }
    
    func downloadWeather(callback: DownloadComplete) {
        let currentWeatherURL = URL(string: CURRENT_WEATHER_URL)!
        print(currentWeatherURL)
        Alamofire.request(currentWeatherURL).responseJSON { response in
            let result = response.result
            print(result)
        }
        callback()
    }
}
