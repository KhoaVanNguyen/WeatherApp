//
//  CurrentWeather.swift
//  Rainyapp
//
//  Created by Khoa on 8/7/16.
//  Copyright © 2016 Khoa. All rights reserved.
//

import UIKit
import Alamofire

class CurrentWeather{
    
    var _cityName : String!
    var _date : String!
    var _weatherType : String!
    var _weatherTemp : Double!
    
    var cityName : String{
        if _cityName == nil
        {
            _cityName = ""
        }
        return _cityName
    }
    var weatherType : String {
        if _weatherType == nil{
            _weatherType = ""
        }
        return _weatherType
    }
    var weatherTemp : Double {
        if _weatherTemp == nil{
            _weatherTemp = 0.0
        }
        return _weatherTemp
    }
    var date : String{
        if _date == nil{
            _date = ""
        }
        let dateFormat = DateFormatter()
        dateFormat.dateStyle = .long
        dateFormat.timeStyle = .none
        let currentDate = dateFormat.string(from: Date())
        self._date = "Today, \(currentDate)"
        return _date
    }
    func downloadWeatherDetails(completed : DownloadComplete)
    {
        Alamofire.request(.GET , CURRENT_WEATHER_URL).responseJSON{
            response in
            let result = response.result
        
           if let dict = result.value as? Dictionary<String, AnyObject> {
                
                if let name = dict["name"] as? String{
                    self._cityName = name.capitalized
                    
                   
                }
                if let weather = dict["weather"] as? [Dictionary<String, AnyObject>]{
                
                    if let main = weather[0]["main"] as? String{
                        self._weatherType = main.capitalized
                        
                    }
                }
            if let main = dict["main"] as? Dictionary<String, AnyObject> {
                if let kevinTemp  = main["temp"] as? Double {
                    let degreeCelciusTemp = kevinTemp - 273.15
                    self._weatherTemp = degreeCelciusTemp
                    
                }
            }
            
            }
            completed()
        }
       
    }

}









