//
//  HopVarietiesTableViewController.swift
//  BetaAlphaAcidPro
//
//  Created by Brendan Incorvaia on 7/20/17.
//  Copyright © 2017 Brendan Incorvaia. All rights reserved.
//

import UIKit

class HopVarietiesTableViewController: UITableViewController {
    
    var hops = [Hop]()
    let citra = Hop(name: "Citra", alphaAcids: "11 - 15", characteristics: "Darling of the WestCoast brew scene, citra hops are charachterized primarily by a bright, and as the name implies, citrusy aroma.", substitutes: ["galaxy"])
    let galaxy = Hop(name: "Galaxy", alphaAcids: "11.6 - 16", characteristics: "The international sensation that put the Southern Hemisphere brew scene on the map, galaxy hops are clean and fruity.", substitutes: ["amarillo"])
    let amarillo = Hop(name: "Amarillo", alphaAcids: "7 - 11", characteristics: "Grapefruit, zest and juice.", substitutes: ["citra"])
    let nelsonSauvin = Hop(name: "Nelson Sauvin", alphaAcids: "11 - 13", characteristics: "Named for the sauvignon blanc grape, whose aroma it resembles, Nelson Sauvin is fruity and tropical, with a delcate wine like bouquet.", substitutes: ["citra"])
    let admiral = Hop(name: "Admiral", alphaAcids: "13 - 16", characteristics: "Sticky, resinous and bitter, this hight alpha acid hop has the heft and pedigee to carry the biggest double IPA", substitutes: ["Challenger","Target"])
    let brewersGold = Hop(name: "Brewers Gold", alphaAcids: "8 - 11", characteristics: "A jammy, pepery hop, Brewers Gold is the antecedent of many of todays high Alpha Acid North American varieties" , substitutes: ["Chinook","Galena","Nugget"])
    let cascade = Hop(name: "Cascade", alphaAcids: "5.5 - 9", characteristics: "Cascade is floral and citrusy with notes of lemon zest and honeysuckle.", substitutes: ["Amarillo", "Centenial"])
    let centenial = Hop(name: "Centenial", alphaAcids: "7 - 12", characteristics: "Floral and citrusy", substitutes: ["Cascade","Chinook","Columbus"])
    let challenger = Hop(name: "Chalenger", alphaAcids: "6.5 - 8.5", characteristics: "Citrus and earty spice.", substitutes: ["Admiral", "Perle", "Northern Brewer"])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hops.append(amarillo)
        hops.append(citra)
        hops.append(galaxy)
        hops.append(nelsonSauvin)
        hops.append(admiral)
        hops.append(brewersGold)
        hops.append(cascade)
        hops.append(centenial)
        hops.append(challenger)
        hops.sort { $0.name < $1.name }
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hops.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "hopVarietiesTableViewCell", for: indexPath) as! HopVarietiesTableViewCell

        let row = indexPath.row
        let hop = hops[row]
        cell.hopNameLabel.text = hop.name
        cell.alphaAcidLabel.text = hop.alphaAcids

        return cell
    }
    
    
    @IBAction func unwindToHopVarietiesTableViewController(_ segue: UIStoryboardSegue) {
        
    }
        
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "hopViewController" {
                print("Table view cell tapped")
                
                let indexPath = tableView.indexPathForSelectedRow!
                
                let hop = hops[indexPath.row]
                
                let HopViewController = segue.destination as! HopViewController
                
                HopViewController.hop = hop
            }
        }
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
