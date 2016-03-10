//
//  ViewController.swift
//  testRoundImage
//
//  Created by 火星人 on 16/3/6.
//  Copyright © 2016年 火星人. All rights reserved.
//

import UIKit

class CellModel :NSObject{
    var title:String!
    var bussiness = { return }
}

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
        tableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "cell")
        self.setupData()
    }
    
    func setupData(){
        data = NSMutableArray()
       
        var cellModel = CellModel()
        cellModel.title = "cornerRadius"
        cellModel.bussiness = {
            let vc = VC()
            vc.title = "cornerRadius"
            self.navigationController?.pushViewController(vc, animated: true)
        }
        data .addObject(cellModel)
        
        
        cellModel = CellModel()
        cellModel.title = "高效的方法"
        cellModel.bussiness = {
            let vc = VC2()
            vc.title = "高效"
            self.navigationController?.pushViewController(vc, animated: true)
        }
        data .addObject(cellModel)
        
        
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = data[indexPath.row].title
        
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let bussiness = data[indexPath.row].bussiness
        bussiness()
    }

}

