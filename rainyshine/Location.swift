//
//  Location.swift
//  rainyshine
//
//  Created by Leon on 9/12/16.
//  Copyright © 2016 Leon. All rights reserved.
//

import Foundation
import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}
