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

    // A "link" to the storyboard to allow us to communicate with our view
    @IBOutlet var tableView: UITableView!

    // MARK: Data Model

    // Datasource to load into tableView
    let titles = ["Hello", "It's", "Me", "..."]

    // MARK: View Controller Lifecycle

    // Called when our viewController loads into memory
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // Called when the phone needs some more memory
    //   this function lets you gracefully clean up memory
    //   that way if you are in the background (multitasking) and the
    //   phone needs more memory, it gives you a chance to save some state
    //   data
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UITableView DataSource

    // Sets the amount of cells that need to be created by our view
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }

    // Gets called for every cell that needs to get loaded by the tableView
    //   if you have enough cells that scrolling is required - if you scroll back
    //   up to cells that have already loaded, this still gets called because 
    //   the cells need to be "recreated"
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // create a reusable cell for our tableView
        // By reusing cells, we don't have to create n cells at runtime, only need
        //   to reuse the max number of cells that can be displayed at once and 
        //   load data into the cells as we scroll
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")!

        // Set the main label on the UILabel to our model's text in the appropriate position
        cell.textLabel?.text = titles[indexPath.row]

        // Return the cell we have created
        return cell
    }

    // MARK: UITableView Delegate

    // Called when a cell is tapped by the user
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("By Adele")
    }
}

