//
//  Location.swift
//  Rainyapp
//
//  Created by Khoa on 8/9/16.
//  Copyright © 2016 Khoa. All rights reserved.
//

import CoreLocation

class Location{
    
    static var  instance = Location()
    
    private init() {}
    var latitude : Double!
    var longitude : Double!
    
}

