//
//  ThingsTableVC.swift
//  Douban-Swift
//
//  Created by Doye on 15/12/22.
//  Copyright © 2015年 d0ye. All rights reserved.
//

import UIKit
import Alamofire
import Kingfisher

class ThingsTableVC: UITableViewController {
    
    
    struct ThingsTableCellIdentifiers {
        static let resultCell = "ThingsTableCell"
        static let nothingFoundCell = "NothingFoundCell"
        static let loadingCell = "LoadingCell"
    }
    
    var hotContents:HotContents?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var cellNib = UINib(nibName: ThingsTableCellIdentifiers.resultCell, bundle: nil)
        tableView.registerNib(cellNib, forCellReuseIdentifier: ThingsTableCellIdentifiers.resultCell)
        
        let urlString = "https://frodo.douban.com/api/v2/seti/channel/hot_contents?alt=json&apikey=0ab215a8b1977939201640fa14c66bab&count=15&douban_udid=b5f1d52dbc9f4b597358a22affb5d776471ed401&latitude=22.52776782620912&loc_id=118282&longitude=113.9384705441099&start=0&udid=ed2a9475b595d5c3ef6814ac98a22285803bcbb1&version=3.1.0"
        
        Alamofire.request(.GET, urlString).responseJSON { (response) -> Void in  //[unowned self]
            guard let _hotcontents = HotContents(dictionary: response.result.value as! [String: AnyObject]) else {
                print("json Errors~")
                return
            }
            self.hotContents = _hotcontents
            
            
            self.tableView.reloadData()
            
        }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

}

// MARK: - Table view data source
extension ThingsTableVC{
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let _hotContents = hotContents {
            return (_hotContents.contents?.count)!
        }else {
            return 0
        }
        
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(ThingsTableCellIdentifiers.resultCell, forIndexPath: indexPath) as! ThingsTableCell//ThingsTableViewCell
        //cell.textLabel?.text = hotContents?.contents![indexPath.row].text
        let content = (hotContents?.contents![indexPath.row])!
//        cell.textView.text = content.text
//        cell.peopleLabel.text = content.author?.name
//        cell.peopleImageView.kf_setImageWithURL(NSURL(string: (content.author?.avatar)!)!)
//        if content.recommend_comments?.count != 0 {
//            cell.messageLabel.text = content.recommend_comments![0].text
//        }
//        cell.fromLabel.text = String(content.channel_id)
//        cell.timeLabel.text = content.update_time
//        if content.images?.count != 0 {
//            cell.contentImageView.kf_setImageWithURL(NSURL(string: content.images![0].normal!.url!)!)
//        }
        cell.avatarImageView.kf_setImageWithURL(NSURL(string: (content.author?.avatar)!)!)
        if content.images?.count != 0 {
            cell.photoImageView.kf_setImageWithURL(NSURL(string: content.images![0].normal!.url!)!)
        }
        cell.titleLabel.text = content.text
        cell.nameLabel.text = content.author?.name
        cell.timeLabel.text = "n days ago"
        return cell
    }
    
    /*
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    */

    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return CGFloat(160)
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
