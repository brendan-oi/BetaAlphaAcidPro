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
    let citra = Hop(name: "Citra", alphaAcids: "11 - 15", characteristics: "Darling of the west coast craft brew scene, citra hops are charachterized primarily by a bright, and as the name implies, citrusy aroma. Orange, and grapefruit, aromas are prevelant but so are mango, and other tropical fruit.", substitutes: ["Amarillo, Centenial, Galaxy"])
    let galaxy = Hop(name: "Galaxy", alphaAcids: "12 - 16", characteristics: "The international sensation that put the Southern Hemisphere hops on the map, galaxy hops are clean and fruity. Aromas of Peach, pair and citrus are common.", substitutes: ["Amarillo, Citra"])
    let amarillo = Hop(name: "Amarillo", alphaAcids: "7 - 11", characteristics: "Grapefruit, zest and juice, with spice and pepper.", substitutes: ["Citra, Galaxy"])
    let nelsonSauvin = Hop(name: "Nelson Sauvin", alphaAcids: "11 - 13", characteristics: "Named for the sauvignon blanc grape, whose aroma it resembles, Nelson Sauvin is fruity and tropical, with a delcate wine like bouquet.", substitutes: ["citra"])
    let admiral = Hop(name: "Admiral", alphaAcids: "13 - 16", characteristics: "Sticky, resinous and bitter, this hight alpha acid hop has the heft and pedigee to carry the biggest double IPA. Subdued citrus notes and piney aromas.", substitutes: ["Challenger","Target"])
    let brewersGold = Hop(name: "Brewers Gold", alphaAcids: "8 - 11", characteristics: "A jammy, pepery hop, Brewers Gold is the antecedent of many of todays high Alpha Acid North American varieties" , substitutes: ["Chinook","Galena","Nugget"])
    let cascade = Hop(name: "Cascade", alphaAcids: "5.5 - 9", characteristics: "Perhaps the first great American hop. Fritz Maytag chose cascade to be backbone of Liberty Ale, arguably the first post prohibition American IPA. Floral and citrusy with notes of lemon zest and honeysuckle.", substitutes: ["Amarillo", "Centenial"])
    let centenial = Hop(name: "Centenial", alphaAcids: "7 - 12", characteristics: "Floral and citrusy", substitutes: ["Cascade","Chinook","Columbus"])
    let challenger = Hop(name: "Chalenger", alphaAcids: "6.5 - 8.5", characteristics: "Bitter citrus and earty spice.", substitutes: ["Admiral", "Perle", "Northern Brewer"])
    let chinook = Hop(name: "Chinook", alphaAcids: "12 - 14", characteristics: "Pine, spice and citrus all flow together in the profile of this American stalwart." , substitutes: ["Gelena", "Centenial", "Columbus"])
    let cluster = Hop(name: "Cluster", alphaAcids: "6 - 9", characteristics: "The most widely cultivated hop variety in the US well into the second half of the last century, Cluster is somewhat less expressive than the flashy varieties that followed it but still banks strong notes of pine, citrus zest and pepper.", substitutes: ["Galena"])
    let columbus = Hop(name: "Columbus", alphaAcids: "14 - 18", characteristics: "Columbus (also called Tomahawk) is primarily, though not exclusvely, utilixed as a bittering hop. Exhibits a peppery and grassy aroma.", substitutes: ["Centenial", "Northern Brewer"])
    let crystal = Hop(name: "Crystal", alphaAcids: "3 - 5", characteristics: "Delightful, but sublte, Crystal is light, and floral, with stonefruit and allspice." , substitutes: ["Hallertau", "Liberty", "Mt. Hood"])
    let eastKentGolding = Hop(name: "East kent Golding", alphaAcids: "4.5 - 6.5", characteristics: "Earthy and Spice, like yerba mate, or earl grey tea.", substitutes: ["Fuggles", "Golding"])
    let falconersFlight = Hop(name: "Falconer's Flight", alphaAcids: "9 - 10.5", characteristics: " Falconer's Flight is not a variety of hops, but rather a prorietary blend put together by Hopunion. Earth. Citrus. Spice.", substitutes: ["Cascade", "Columbus", "Centenial"])
    let fuggle = Hop(name: "Fuggle", alphaAcids: "3 - 6", characteristics: "The quintessential British hop. As essential to British beer as Mari Otter. Fuggle is rich with low earthy spices. Not as flashy as some recent North American and southern hemisphere varieties, Fuggle is staid and ", substitutes: <#T##[String]#>)
    
    
    
    
    
    
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
        hops.append(chinook)
        hops.append(cluster)
        hops.append(columbus)
        hops.append(crystal)
        hops.append(eastKentGolding)
        hops.append(falconersFlight)
        
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
