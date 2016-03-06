//
//  ViewController.swift
//  testRoundImage
//
//  Created by 火星人 on 16/3/6.
//  Copyright © 2016年 火星人. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView:UITableView!
    var data:NSMutableArray!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "home"
        
        tableView = UITableView(frame: self.view.frame, style: UITableViewStyle.Plain)
        self.view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        
        self.setupData()
    }
    
    func setupData(){
        data = NSMutableArray()
       
        var dict = NSMutableDictionary()
        dict["title"] = "cornerRadius"
        //dict["vc"] =
        data.addObject(dict)
        
        
        dict = NSMutableDictionary()
        dict["title"] = "cornerRadius"
        dict["vc"] = "VC2"
        data.addObject(dict)
        
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        
        cell.textLabel?.text = data[indexPath.row]["title"] as? String
        
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        let str:String = data[indexPath.row]["vc"] as! String
//        let vcClass:AnyClass = NSClassFromString(str)!
//        
//        let vc:UIViewController = vcClass()
//        self.navigationController?.pushViewController(vc, animated: true)
    }

}

