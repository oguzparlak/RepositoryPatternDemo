//
//  DummyApi.swift
//  RepositoryDemo
//
//  Created by oguzparlak on 4.02.2020.
//  Copyright © 2020 Oguz Parlak. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class WeatherApi {
    
    class func getWeatherData() -> ObservableWeatherData {
        return Observable.empty()
    }
    
    class func saveWeatherData(data: ObservableWeatherData) {
        
    }
    
}
