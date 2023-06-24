//
//  File.swift
//  GoodWeather_MVVM
//
//  Created by Oğulcan Aşa on 23.06.2023.
//

import Foundation
import UIKit

class AddWeatherCityViewController: UIViewController {
    @IBOutlet weak var cityNameTextField: UITextField!

    @IBAction func saveCityButtonPressed() {
        if let city = cityNameTextField.text {
            let weatherURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=051105ebb7dbffbad061a8a5eece66fe")!

            let weatherResource = Resource<Any>(url: weatherURL) { data in
                return data
            }
            WebService().load(resource: weatherResource) { result in
                
            }
        }
    }

    @IBAction func close() {
        self.dismiss(animated: true, completion: nil)
    }
}
