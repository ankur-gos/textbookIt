//
//  SearchResultsDelegate.swift
//  textbookIT
//
//  Created by Ankur Goswami on 5/14/15.
//  Copyright (c) 2015 Free Time Tech. All rights reserved.
//

import UIKit

extension SearchResultsViewController: UITableViewDelegate {
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let viewController: ViewListingViewController = self.storyboard?.instantiateViewControllerWithIdentifier("moreInfo") as! ViewListingViewController
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}