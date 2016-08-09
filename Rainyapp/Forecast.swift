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
init(weatherDict : Dictionary<String, AnyObject>)
{

    if let temp = weatherDict["temp"] as? Dictionary<String, AnyObject> {
        if let min = temp["min"] as? Double {
            _minTemp = "\(min)"
        }
        if let max = temp["max"] as? Double {
            _maxTemp = "\(max)"
        }
    }
    if let weather = weatherDict["weather"] as? [Dictionary<String, AnyObject>]{
        if let main = weather[0]["main"] as? String{
            _weatherType = main
        }
    }
    if let date = weatherDict["dt"] as? Double {
        let unixConvertedDate = Date(timeIntervalSince1970: date)
        let dateFormatter = DateFormatter() //
        dateFormatter.dateStyle = .full     // What are they ???
        dateFormatter.dateFormat = "EEEE"   //
        dateFormatter.timeStyle = .none     //
        self._date = unixConvertedDate.dayOfTheWeek()
    }
}
}

extension Date{
    func dayOfTheWeek() -> String{
        let dayFormatter = DateFormatter()
        dayFormatter.dateFormat = "EEEE"
        return dayFormatter.string(from: self)
    }
}












