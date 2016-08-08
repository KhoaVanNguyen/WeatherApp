//
//  Constains.swift
//  Rainyapp
//
//  Created by Khoa on 8/7/16.
//  Copyright © 2016 Khoa. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LAT = "lat="
let LONG = "&lon="
let APPID = "&appid="
let API_KEY = "ebf6c86f89dc67c87d272f8941885290"

typealias DownloadComplete = () -> ()
let CURRENT_WEATHER_URL = "\(BASE_URL)\(LAT)35\(LONG)139\(APPID)\(API_KEY)"
