//
//  SellerSignupExtension.swift
//  textbookIT
//
//  Created by Ankur Goswami on 5/18/15.
//  Copyright (c) 2015 Free Time Tech. All rights reserved.
//

import ParseUI

extension SellerMainViewController:PFSignUpViewControllerDelegate {
    func signUpViewController(signUpController: PFSignUpViewController, didSignUpUser user: PFUser) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}