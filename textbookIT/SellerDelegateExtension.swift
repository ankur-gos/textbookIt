//
//  SellerDelegateExtension.swift
//  textbookIT
//
//  Created by Ankur Goswami on 5/19/15.
//  Copyright (c) 2015 Free Time Tech. All rights reserved.
//

import UIKit

extension SellerMainViewController: UITableViewDelegate {
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
}
