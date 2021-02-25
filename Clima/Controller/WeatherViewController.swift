//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {
    
    // IBOutlet Variables
    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // sets the textField delegate to the viewcontroller 
        searchTextField.delegate = self
    }

    @IBAction func searchButtonPressed(_ sender: UIButton) {
        // closes the keyboard when search button is pressed
        searchTextField.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // closes the keyboard with the texfield delegate
        searchTextField.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        // checks user input to see if something was entered
        if textField.text != "" {
            textField.placeholder = "Search"
            return true
        } else {
            textField.placeholder = "Type here"
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        // use searchTextField.text go get the weather for the city
        
        // sets the searchTextField text prop to an empty string
        searchTextField.text = ""
    }
}

