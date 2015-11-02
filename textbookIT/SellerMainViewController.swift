//
//  SellerMainViewController.swift
//  textbookIT
//
//  Created by Ankur Goswami on 5/11/15.
//  Copyright (c) 2015 Free Time Tech. All rights reserved.
//

import UIKit
import ParseUI

class SellerMainViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    let images = ["textbook1.jpg", "textbook2.jpg"]
    let names = ["Discrete Mathematics", "Linear Algebra"]
    let prices = ["$60.00", "$80.00"]
    let qualityBars = ["greenbar.png", "greenbar.png", "greenbar.png"]
    let stars = [5, 5]

    override func viewDidLoad() {
        super.viewDidLoad()
        presentLogInView()
        customNavBar()
        tableView.delegate = self
        self.tableView.registerNib(UINib(nibName: "ListingCell", bundle: nil), forCellReuseIdentifier: "cell")
        self.tableView.dataSource = self
        self.tableView.backgroundColor = UIColor.clearColor()
        self.tableView.clipsToBounds = false
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func customNavBar(){
        let button: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Add, target: self, action: "transition") // programattically set up add view
        self.navigationItem.rightBarButtonItem = button
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 186/255, green: 12/255, blue: 29/255, alpha: 1)
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        self.navigationController?.navigationBar.translucent = false
    }
    
    func transition(){
        let viewController: addListingViewController = self.storyboard?.instantiateViewControllerWithIdentifier("addListingViewController") as! addListingViewController
        self.navigationController?.pushViewController(viewController, animated: true)
        
    }
    
    func presentLogInView(){
        if(PFUser.currentUser() == nil){
            var logInViewController = LoginViewController()
            logInViewController.delegate = self
            logInViewController.fields = PFLogInFields.UsernameAndPassword | PFLogInFields.SignUpButton | PFLogInFields.LogInButton | PFLogInFields.Facebook | PFLogInFields.Twitter
            
            var signUpViewController = SignupViewController()
            signUpViewController.delegate = self
            
            logInViewController.signUpController = signUpViewController
            self.presentViewController(logInViewController, animated: true, completion: nil)
        }
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