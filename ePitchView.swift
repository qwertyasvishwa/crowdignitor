//
//  ePitchView.swift
//  crowdIgnitor
//
//  Created by Admin on 18/11/2016.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class ePitchView: UITableViewController {

    let myHeading = ["AI Based dating platform for investors", "Skoda will go Hybrid by 2019", "How Entrepeneurs can stay enaged and happy"];
    let myPitchDescription = ["There have been many articles about how getting up early is the key to success. The most well-known is one by Richard Branson, Why I Wake Up Early. Recently I read one by Peter Shankman, How to Wake Up Early (And Why It’s So Important), where Peter explains why his getting up at 3:30 a.m. is key to his success. I’m sorry, but a 3:30 a.m. wake time is just nuts -- unless you own a chicken farm or a Dunkin' Donuts.","Here’s the short answer: start with a great pitch deck. The pitch deck is arguably the most important single document you will generate in the life of your company. It is the opening salvo and “the hook” by which you will (or will not) capture the attention and imagination of a potential investor.",""]
    let textCellIdentifier = "TextCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection /Users/admin/Documents/ios/crowdIgnitor/ePitchView.swiftbetween presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myHeading.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: textCellIdentifier) as! ePitchCellTableViewCell!
        cell?.heading.text = myHeading[indexPath.row]
        cell?.elevatorPitch.text = myPitchDescription[indexPath.row]
        return cell!
    }
    
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
