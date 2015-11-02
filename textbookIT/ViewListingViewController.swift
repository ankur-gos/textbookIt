//
//  ViewListingViewController.swift
//  textbookIT
//
//  Created by Ankur Goswami on 5/24/15.
//  Copyright (c) 2015 Free Time Tech. All rights reserved.
//

import UIKit

class ViewListingViewController: UIViewController {
    @IBAction func buyIT(sender: AnyObject) {
        let alert = UIAlertView()
        alert.title = "Message"
        alert.message = "Chat request has been sent!"
        alert.addButtonWithTitle("Ok")
        alert.show()
    }
    
}
