//
//  TeaTableViewController.swift
//  TablePractice
//
//  Created by Apple on 7/29/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

struct Tea{
    var id:Int
    var title:String
    var text:String
    var image:String
}


class TeaTableViewController: UITableViewController {
    var allTea = [
        Tea(id:1,title:"Black",text:"a tea with high caffeine, common examples are English Breakfast and Earl Grey",image:"Black Tea"),
        Tea(id:2,title:"Green",text:"a tea that originated in China, with less caffeine than black tea but still a considerable amount, common examples are matcha and sencha",image:"Green Tea"),
        Tea(id:3,title:"White",text:"the most delicate tea with low levels of caffeine, common examples are Silver Needle and white Peony",image:"White Tea")]

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allTea.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

        cell.textLabel?.text=allTea[indexPath.row].title
        cell.detailTextLabel?.text=allTea[indexPath.row].text
        cell.imageView?.image=UIImage(named:allTea[indexPath.row].image)

        return cell
    }
    override func tableView(_ tableView: UITableView,titleForHeaderInSection section:Int)->String? {
        return "Section \(section)"
    }
    

/*
     //Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

*/
    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
