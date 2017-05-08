//
//  ViewController.swift
//  MiraclePill
//
//  Created by MikhailB on 08/05/2017.
//  Copyright © 2017 Mikhail. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var streetAddressLabel: UILabel!
    @IBOutlet weak var streetAddressTextField: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var zipcodeLabel: UILabel!
    @IBOutlet weak var zipcodeTextField: UITextField!
    @IBOutlet weak var chosenStateLabel: UILabel!
    @IBOutlet weak var statePickerView: UIPickerView!
    
    let states = ["Alaska",
                  "Alabama",
                  "Arkansas",
                  "American Samoa",
                  "Arizona",
                  "California",
                  "Colorado",
                  "Connecticut",
                  "District of Columbia",
                  "Delaware",
                  "Florida",
                  "Georgia",
                  "Guam",
                  "Hawaii",
                  "Iowa",
                  "Idaho",
                  "Illinois",
                  "Indiana",
                  "Kansas",
                  "Kentucky",
                  "Louisiana",
                  "Massachusetts",
                  "Maryland",
                  "Maine",
                  "Michigan",
                  "Minnesota",
                  "Missouri",
                  "Mississippi",
                  "Montana",
                  "North Carolina",
                  " North Dakota",
                  "Nebraska",
                  "New Hampshire",
                  "New Jersey",
                  "New Mexico",
                  "Nevada",
                  "New York",
                  "Ohio",
                  "Oklahoma",
                  "Oregon",
                  "Pennsylvania",
                  "Puerto Rico",
                  "Rhode Island",
                  "South Carolina",
                  "South Dakota",
                  "Tennessee",
                  "Texas",
                  "Utah",
                  "Virginia",
                  "Virgin Islands",
                  "Vermont",
                  "Washington",
                  "Wisconsin",
                  "West Virginia",
                  "Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePickerView.dataSource = self
        statePickerView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func appearance(hide: Bool) {
        if hide {
            nameLabel.isHidden = hide
            nameTextField.isHidden = hide
            streetAddressLabel.isHidden = hide
            streetAddressTextField.isHidden = hide
            cityLabel.isHidden = hide
            cityTextField.isHidden = hide
            zipcodeLabel.isHidden = hide
            zipcodeTextField.isHidden = hide
        } else {
            nameLabel.isHidden = false
            nameTextField.isHidden = false
            streetAddressLabel.isHidden = false
            streetAddressTextField.isHidden = false
            cityLabel.isHidden = false
            cityTextField.isHidden = false
            zipcodeLabel.isHidden = false
            zipcodeTextField.isHidden = false
        }
    }
    
    //When button pressed, all elements above stateLabel will be hidden and statePickeView will appear
    @IBAction func changeStateButtonPressed(_ sender: UIButton) {
        appearance(hide: true)
        statePickerView.isHidden = false
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        chosenStateLabel.text = states[row]
        pickerView.isHidden = true
        appearance(hide: false)
    }

}

