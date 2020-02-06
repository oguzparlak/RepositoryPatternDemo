//
//  WeatherViewController.swift
//  RepositoryDemo
//
//  Created by oguzparlak on 4.02.2020.
//  Copyright © 2020 Oguz Parlak. All rights reserved.
//

import Foundation
import UIKit

class WeatherViewController: UIViewController {
    
    private var weatherViewModel = WeatherViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Use it like this
        weatherViewModel.getWeatherData { (weatherData) in
            // Update your UI with weatherData
        }
        
    }
    
}
