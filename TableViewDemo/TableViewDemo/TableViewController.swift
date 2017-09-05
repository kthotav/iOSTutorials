//
//  TableViewController.swift
//  TableViewDemo
//
//  Created by Karthik Thota on 9/4/17.
//  Copyright © 2017 karthikthota. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    // MARK: - properties
    
    var sampleData:[Dictionary<String, Any>] = [
        [
            "picture": #imageLiteral(resourceName: "Jon_Snow"),
            "name" : "Jon Snow",
            "house": "Stark, Targaryen",
            "emblem": #imageLiteral(resourceName: "wolf")
        ],
        [
            "picture": #imageLiteral(resourceName: "Danny"),
            "name" : "Daenerys Targaryen",
            "house" : "Targaryen",
            "emblem": #imageLiteral(resourceName: "dragon")
        ],
        [
            "picture": #imageLiteral(resourceName: "Tyrion_Lannister"),
            "name" : "Tyrion Lannister",
            "house" : "Lannister",
            "emblem": #imageLiteral(resourceName: "lion")
        ],
        [
            "picture": #imageLiteral(resourceName: "arya_stark"),
            "name" : "Arya",
            "house": "Stark",
            "emblem": #imageLiteral(resourceName: "wolf")
        ]
    ]
    
    let cellIndentifier: String = "cell"

    override func viewDidLoad() {
        super.viewDidLoad()

        let cellNib = UINib(nibName: "TableViewCell", bundle: nil)
        self.tableView.register(cellNib, forCellReuseIdentifier: cellIndentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sampleData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIndentifier, for: indexPath) as! TableViewCell

        // Configure the cell...
        let character = sampleData[indexPath.row]
        cell.emblemImage.image = character["emblem"] as? UIImage
        cell.characterImage.image = character["picture"] as? UIImage
        cell.nameLabel.text = character["name"] as? String
        cell.houseLabel.text = character["house"] as? String


        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 176.0
    }
    

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
