//
//  SearchTextFieldDelegate.swift
//  textbookIT
//
//  Created by Ankur Goswami on 5/27/15.
//  Copyright (c) 2015 Free Time Tech. All rights reserved.
//

import UIKit

extension SearchViewController: UITextFieldDelegate{
    func textFieldDidBeginEditing(textField: UITextField) {
        if textField == schoolField{
            textField.text = universities[0]
        }
        else if textField == depField{
            textField.text = departments[0]
        }
    }
}
