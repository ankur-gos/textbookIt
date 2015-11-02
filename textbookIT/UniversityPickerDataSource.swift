//
//  UniversityPickerDataSource.swift
//  textbookIT
//
//  Created by Ankur Goswami on 5/26/15.
//  Copyright (c) 2015 Free Time Tech. All rights reserved.
//

import UIKit

extension SearchViewController: UIPickerViewDataSource{
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == uniPicker{
            return self.universities.count
        }
        else{
            return self.departments.count
        }
    }
}