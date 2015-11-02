//
//  UIFontLabel.swift
//  textbookIT
//
//  Created by Ankur Goswami on 4/28/15.
//  Copyright (c) 2015 Free Time Tech. All rights reserved.
//

import UIKit

class UIFontLabel: UILabel {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setFontSize(size:CGFloat){
        self.font = UIFont(name: "Existence-Light", size: size)
    }
}

