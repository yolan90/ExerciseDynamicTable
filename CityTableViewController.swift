//
//  CityTableViewController.swift
//  ExerciseDynamicTable
//
//  Created by Yolanda Halim on 31/01/19.
//  Copyright © 2019 Yolanda Halim. All rights reserved.
//

import UIKit

struct City {
    var name: String
}

class CityTableViewController: UITableViewController {
    let cities1 : [String] = ["Jakarta", "Sao Paulo", "New York", "Tokyo"]
    let cities2 : [String] = ["Rio de Janeiro","Bali","Ibiza"]
    var citiesObjArr1 : [City] = []
    var citiesObjArr2 : [City] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        for item in cities1 {
            let city = City(name: item)
            citiesObjArr1.append(city)
        }
        
        for item in cities2 {
            let city = City(name: item)
            citiesObjArr2.append(city)
        }
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    // iterate for each section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        var numRow = 1;
        if(section == 0) {
            numRow = citiesObjArr1.count
        } else {
            numRow = citiesObjArr2.count
        }
        return numRow
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)

        // Configure the cell...
        if(indexPath.section == 0) {
            cell.textLabel?.text = citiesObjArr1[indexPath.row].name
        } else {
            cell.textLabel?.text = citiesObjArr2[indexPath.row].name
        }
        
        return cell
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
