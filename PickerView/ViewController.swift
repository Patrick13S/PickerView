//
//  ViewController.swift
//  PickerView
//
//  Created by Patrick Stroyan on 3/11/22.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int { return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return pickerValues.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        pickerValues [row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        view.endEditing(true)
        switch row
        {
        case 0:
            labelOutlet.text = "a"
            
        case 1:
            labelOutlet.text = "b"
            
        case 2:
            labelOutlet.text = "c"
            
        case 3:
            labelOutlet.text = "d"
            
        default:  labelOutlet.text = "a"
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        pickerOutlet.delegate = self
        pickerOutlet.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    var pickerValues = ["Alpha", "Beta", "Gamma", "Delta" ]
    
    @IBOutlet weak var pickerOutlet: UIPickerView!
    
    @IBOutlet weak var labelOutlet: UILabel!
 
    
    
    
    
}

