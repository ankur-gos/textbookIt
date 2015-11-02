//
//  UIbuysellButton.swift
//  textbookIT
//
//  Created by Ankur Goswami on 5/11/15.
//  Copyright (c) 2015 Free Time Tech. All rights reserved.
//

import UIKit

class UIbuysellButton: UIFontButton {
    required init(coder: NSCoder){
        super.init(coder: coder)
        setFontSize(30)
        self.tintColor = UIColor.whiteColor()
    }
}
