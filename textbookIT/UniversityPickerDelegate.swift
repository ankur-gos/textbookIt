//
//  UniversityPickerDelegate.swift
//  textbookIT
//
//  Created by Ankur Goswami on 5/26/15.
//  Copyright (c) 2015 Free Time Tech. All rights reserved.
//

import UIKit

extension SearchViewController: UIPickerViewDelegate {
    func pickerView(pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        var title = ""
        if pickerView == uniPicker{
            title = universities[row]
        }
        else{
            title = departments[row]
        }
        return NSAttributedString(string: title, attributes: [NSForegroundColorAttributeName:UIColor.blackColor()])
    }
    
}
