//
//  ViewController.swift
//  Rainyapp
//
//  Created by Khoa on 8/7/16.
//  Copyright © 2016 Khoa. All rights reserved.
//

import UIKit

class WeatherVC : UIViewController , UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    
    @IBOutlet weak var currentWeatherTypeLbl: UILabel!
    @IBOutlet weak var currentTempLbl: UILabel!
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
   
    var currentWeather : CurrentWeather!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .singleLine
        tableView.allowsSelection = false
        
        currentWeather = CurrentWeather()
        currentWeather.downloadWeatherDetails {
            self.updateMainUI()
            
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath)
        return cell
    }
    
    func updateMainUI()
    {
        
        
        dateLbl.text = currentWeather.date
        locationLbl.text = currentWeather.cityName
        currentWeatherTypeLbl.text = currentWeather.weatherType
        currentTempLbl.text = "\(currentWeather.weatherTemp)"
        weatherImage.image = UIImage(named: currentWeather.weatherType)
    }
}






