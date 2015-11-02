//
//  LoginViewController.swift
//  textbookIT
//
//  Created by Ankur Goswami on 5/11/15.
//  Copyright (c) 2015 Free Time Tech. All rights reserved.
//

import UIKit
import ParseUI

class LoginViewController: PFLogInViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.logInView?.logo = UIImageView(image: UIImage(named: "textbookITLOGO2.png"))
        self.logInView?.signUpButton?.setBackgroundImage(UIImage(named: "SIGNUP.png"), forState: UIControlState.Normal)
        self.logInView?.backgroundColor = UIColor(red: 1, green: 182/255, blue: 170/255, alpha: 1)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.logInView?.logo?.frame = CGRect(x: 90, y: 20, width: 150, height: 150)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
