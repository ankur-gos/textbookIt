//
//  SearchResultsViewController.swift
//  textbookIT
//
//  Created by Ankur Goswami on 5/14/15.
//  Copyright (c) 2015 Free Time Tech. All rights reserved.
//

import UIKit

class SearchResultsViewController: UIViewController {
    
    let images = ["textbook1.jpg", "textbook1.jpg", "textbook1.jpg", "textbook1.jpg", "textbook1.jpg"]
    let names = ["Discrete Mathematics", "Discrete Mathematics", "Discrete Mathematics", "Discrete Mathematics", "Discrete Mathematics"]
    let prices = ["$60.00", "$80.00", "$65.00", "$70.00", "$60.00"]
    let qualityBars = ["redbar.png", "yellowbar.png", "greenbar.png", "greenbar.png", "redbar.png"]
    let stars = [4, 5, 5, 2, 5]

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.registerNib(UINib(nibName: "ListingCell", bundle: nil), forCellReuseIdentifier: "cell")
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.backgroundColor = UIColor.clearColor()
        self.tableView.clipsToBounds = false
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
