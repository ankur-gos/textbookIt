//
//  UIFontButton.swift
//  textbookIT
//
//  Created by Ankur Goswami on 4/30/15.
//  Copyright (c) 2015 Free Time Tech. All rights reserved.
//

import UIKit

class UIFontButton: UIButton {
    required init(coder: NSCoder){
        super.init(coder: coder)
    }
    
    func setFontSize(size: CGFloat){
        self.titleLabel?.font = UIFont(name: "Existence-Light", size: size)
    }

}
