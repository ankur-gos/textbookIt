//
//  UniversityPickerView.swift
//  textbookIT
//
//  Created by Ankur Goswami on 5/26/15.
//  Copyright (c) 2015 Free Time Tech. All rights reserved.
//

import UIKit

class UniversityPickerView: NSObject{
    
    let universities = ["UC Santa Cruz"]
    
    override init(){
        super.init()
    }
    
    func createPicker() -> UIPickerView {
        let pickerView = UIPickerView()
        pickerView.backgroundColor = UIColor.whiteColor()
        return pickerView
    }
}
