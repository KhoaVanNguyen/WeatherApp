//
//  Forecast.swift
//  Rainyapp
//
//  Created by Khoa on 8/8/16.
//  Copyright © 2016 Khoa. All rights reserved.
//

import Foundation
class Forecast{

    var _weatherType : String!
    var _maxTemp : String!
    var _minTemp : String!
    var _date : String!
    
    var weatherType : String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    var date :  String {
        if _date == nil {
            _date = ""
        }
        return _date
    }
    var minTemp : String {
        if _minTemp == nil{
            _minTemp = ""
        }
        return _minTemp
    }
    var maxTemp : String {
        if _maxTemp == nil{
            _maxTemp = ""
        }
        return _maxTemp
    }
}














