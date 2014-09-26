//
//  FirstViewController.swift
//  Grumblr
//
//  Created by Haodong Liu on 9/26/14.
//  Copyright (c) 2014 Haodong Liu. All rights reserved.
//

import UIKit

class HomepageViewController:  UITableViewController,UITableViewDataSource, UITableViewDelegate {
    
    var test = ["cat","Dog","Pig"]
    let cellIdentifier = "ListViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView?.registerClass(UITableViewCell.self, forCellReuseIdentifier: self.cellIdentifier)
        
        
        test = ["what","the"]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        println(self.test.count)
        return test.count
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override   func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("ListViewCell") as UITableViewCell
        cell.textLabel?.text = "haha"
        return cell
    }

}

