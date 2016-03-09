//
//  VC2.swift
//  testRoundImage
//
//  Created by 火星人 on 16/3/9.
//  Copyright © 2016年 火星人. All rights reserved.
//

import UIKit

class VC2: UITableViewController{
    
    
    
    override func viewDidLoad() {
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "cell")
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.imageView?.image  = UIImage(named: "test")
        cell.textLabel?.text = "\(indexPath.row)"
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        cell.imageView?.setRoundCorner2(30)
        
        return cell
    }
    
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }
    
}
