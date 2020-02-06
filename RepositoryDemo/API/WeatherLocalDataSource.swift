//
//  WeatherLocalDataSource.swift
//  RepositoryDemo
//
//  Created by oguzparlak on 4.02.2020.
//  Copyright © 2020 Oguz Parlak. All rights reserved.
//

import Foundation
import RxSwift

class WeatherLocalDataSource {
    
    // Fetches the data from UserDefaults or Realm
    // and returns an Observable
    class func getWeatherData() -> ObservableWeatherData {
        return Observable.empty()
    }
    
    // Saves the Observable data into UserDefaults or Realm
    class func saveWeatherData(_ data: ObservableWeatherData) {
        // ...
    }
    
}
