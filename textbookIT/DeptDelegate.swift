//
//  DeptDelegate.swift
//  textbookIT
//
//  Created by Ankur Goswami on 5/27/15.
//  Copyright (c) 2015 Free Time Tech. All rights reserved.
//

import UIKit

class deptPicker: NSObject, UIPickerViewDataSource, UIPickerViewDelegate{
    
    let departments = ["MATH", "CMPE", "CMPS", "ECON", "CHEM", "TIM"]
    
    func pickerView(pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let title: String = departments[row]
        return NSAttributedString(string: title, attributes: [NSForegroundColorAttributeName:UIColor.redColor()])
    }
    
    @objc func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    @objc func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.departments.count
    }
}
