//
//  SellerLoginExtension.swift
//  textbookIT
//
//  Created by Ankur Goswami on 5/18/15.
//  Copyright (c) 2015 Free Time Tech. All rights reserved.
//

import ParseUI

extension SellerMainViewController:PFLogInViewControllerDelegate {
    func logInViewController(logInController: PFLogInViewController, shouldBeginLogInWithUsername username: String, password: String) -> Bool {
        if(username != "" && password != ""){
            return true
        }
        return false
    }
    
    func logInViewControllerDidCancelLogIn(logInController: PFLogInViewController) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func logInViewController(logInController: PFLogInViewController, didLogInUser user: PFUser) {
        self.viewDidLoad()
        user.saveInBackgroundWithBlock{
            (success: Bool, error: NSError?) -> Void in
            if(success == true){
                
            }
            else{
                
            }
        }
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}