//
//  LessonsTableViewController.swift
//  SabbathSchool
//
//  Created by Heberti Almeida on 26/02/16.
//  Copyright © 2016 Adventech. All rights reserved.
//

import UIKit

final class LessonsTableViewController: StretchyTableViewController {
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        let image = R.image.illustration()
        let (background, primary, secondary, _) = image!.colors()
        backgroundColor = background
        primaryColor = primary
        secondaryColor = secondary
        
        super.viewDidLoad()
        self.title = "Jeremiah".uppercaseString
        
        setBackButtom()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        hideNavigationBar()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 13
    }
    
    override func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(R.reuseIdentifier.lessonCell, forIndexPath: indexPath)!
        cell.numberLabel.text = String(indexPath.row+1)
        cell.titleLabel.text = "The Prophetic Calling of Jeremiah"
        cell.subtitleLabel.text = "Sep 26 - Oct 2"

        return cell
    }
}
