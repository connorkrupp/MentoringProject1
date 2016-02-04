//
//  ViewController.swift
//  MichiganHackersP1
//
//  Created by Connor Krupp on 04/02/2016.
//  Copyright © 2016 Connor Krupp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // MARK: IBOutlets

    @IBOutlet var tableView: UITableView!

    // MARK: Data Model

    let titles = ["Hello", "It's", "Me", "..."]

    // MARK: View Controller Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UITableView DataSource

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")!
        cell.textLabel?.text = titles[indexPath.row]
        return cell
    }

    // MARK: UITableView Delegate

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("By Adele")
    }
}

