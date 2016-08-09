//
//  WeatherCell.swift
//  Rainyapp
//
//  Created by Khoa on 8/9/16.
//  Copyright © 2016 Khoa. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {
    
    @IBOutlet weak var maxTempLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var minTempLbl: UILabel!
    @IBOutlet weak var weatherTypeLbl: UILabel!
    @IBOutlet weak var weatherTypeImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI(forecastData : Forecast)
    {
        minTempLbl.text = forecastData.minTemp
        maxTempLbl.text = forecastData.maxTemp
        dateLbl.text = forecastData.date
        weatherTypeImage.image = UIImage(named: forecastData.weatherType)
        weatherTypeLbl.text = forecastData.weatherType
    }
    
}
