//
//  UITitlePageControl.swift
//  textbookIT
//
//  Created by Ankur Goswami on 4/28/15.
//  Copyright (c) 2015 Free Time Tech. All rights reserved.
//

import UIKit

class UITitlePageControl: UIPageControl {
    
    required init(coder: NSCoder){
        super.init(coder: coder)
        self.numberOfPages = 3
        self.pageIndicatorTintColor = UIColor.grayColor()
        self.currentPageIndicatorTintColor = UIColor.blackColor()
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
