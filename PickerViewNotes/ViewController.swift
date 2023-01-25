//
//  ViewController.swift
//  PickerViewNotes
//
//  Created by ROY ALAMEH on 1/25/23.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pickerOutlet: UIPickerView!
    
    @IBOutlet weak var dateOutlet: UIDatePicker!
    var things = ["cheese", "happiness", "more cheese", "pickerview"]
    var things2 = ["a", "b", "c", "cheese", "ultrasuper cheese"]

    override func viewDidLoad() {
        super.viewDidLoad()
        pickerOutlet.delegate = self
        pickerOutlet.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return things.count
        }
        return things2.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return things[row]
        }
        return things2[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            print(things[row])
        }
        else {
            print(things2[row])
        }
    }

    @IBAction func submitButton(_ sender: UIButton) {
        var dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM dd, yyyy, hh:mm:ss a"
        let year = dateFormatter.string(from: dateOutlet.date)
        print(year)
    }
}

