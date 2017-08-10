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
    let eastKentGolding = Hop(name: "East Kent Golding", alphaAcids: "4.5 - 6.5", characteristics: "Earthy and Spice, like yerba mate, or earl grey tea.", substitutes: ["Fuggles", "Golding"])
    let falconersFlight = Hop(name: "Falconer's Flight", alphaAcids: "9 - 10.5", characteristics: " Falconer's Flight is not a variety of hops, but rather a prorietary blend put together by Hopunion. Earth. Citrus. Spice.", substitutes: ["Cascade", "Columbus", "Centenial"])
    let fuggle = Hop(name: "Fuggle", alphaAcids: "3 - 6", characteristics: "The quintessential British hop. As essential to British beer as Mari Otter. Fuggle is rich with low earthy spices. Not as flashy as some recent North American and southern hemisphere varieties, Fuggle is staid and ", substitutes: ["Styrian", "Willamette"])
    let galena = Hop(name: "Galena", alphaAcids: "13 - 15", characteristics: "A high alpha acid bittering hop, Galena was among a variety of hops to come out of USDA breeding programs. Aromas of black currant, lime and pine are present", substitutes: ["Brewer's Gold", "Columbus", "Nugget"])
    let golding = Hop(name: "Golding", alphaAcids: "3 - 6.5", characteristics: "The American version of classic and staid English strains of the same name. Earthy and sweet.", substitutes: ["East Kent Golding", "Fuggle", "Willamette"])
    let hallertau = Hop(name: "Hallertau", alphaAcids: "3.5 - 6.5", characteristics: "Hallertau is one of the four noble hops that are essential to classic German and Czech styles. Low in alpha acid, high bright floral aromas. A pilsner is not a pilsner without noble hops. A US version is avaiable, often labeled \"US Hallertau.\" German examples can be distinguished as \"Hallertau Mittelfruh" , substitutes: ["Liberty", "Mt. Hood", "Magnum", "Taurus"])
    let horizon = Hop(name: "Horizon", alphaAcids: "8.5 - 12", characteristics: "Decended from Brewer's Gold, Horizon echos the subtly of noble hops, but has a markedly higher alpha acid content. Honey suckle and pear.", substitutes: ["Magnum", "Nugget", "Columbus"])
    let liberty = Hop(name: "Liberty", alphaAcids: "4 - 5.5", characteristics: "An American offshoot of Hallertau, Liberty shares that noble hop's sublte, floral character.", substitutes: ["Hallertau", "Mt. Hood", "Tradition"])
    let magnum = Hop(name: "Magnum", alphaAcids: "12 - 15.5", characteristics: "Primarily a bittering hop, this high alpga acid was developed in Germany in the 1980's and is grown both in Germany and the US. Magnum displays a spicy flavor with low aromatic character", substitutes: ["Columbus", "Horizon", "Nugget"])
    let mandarinaBavaria = Hop(name: "Mandarina Bavaria", alphaAcids: "7 - 10", characteristics: "One of the newest hop varieties to emerge from the Hop Research Intitue in Hüll, Mandarina Bavaria stabs at the bright citrus characteristics that have made Southern Hemisphere and newer North AMerican hops so popular in recent years. As the name implies it has an aroma of ripe mandarins and tangerines.", substitutes: ["Citra", "Galaxy"])
    let merkur = Hop(name: "Merkur", alphaAcids: "12 - 14", characteristics: "Earthy and zesty, this german variety has notes of mint and citrus.", substitutes: ["Magnum", "Tarsus", "Tradition"])
    let millennium = Hop(name: "Millennium", alphaAcids: "15 - 18.5", characteristics: "Resious and sticky with notes of coffee and pine, millennium is primarily employed as a bittering hop.", substitutes: ["Columbus", "Nugget"])
    let motueka = Hop(name: "Motueka", alphaAcids: "6.5 - 7.5", characteristics: "Lemon and lime zest, mango.", substitutes: ["Saaz", "Sterling"])
    let mtHood = Hop(name: "Mt. Hood", alphaAcids: "4 - 6.5", characteristics: "An American hop that aproaches Hallertau for spice and subtlety", substitutes: ["Hallertau"])
    let mtRainer = Hop(name: "Mt. Rainer", alphaAcids: "5 - 7", characteristics: "A light and floral dual purpose Hop. Notes of licorice.", substitutes: ["Brewer's Gold", "Fuggle", "Hallertau"])
    let newport = Hop(name: "Newport", alphaAcids: "10 - 12.5", characteristics: "Citrus, and earth. Balsamic vinegar. Primarily a bittering hop.", substitutes: ["Brewer's Gold", "Fuggle"])
    let northdown = Hop(name: "Northdown", alphaAcids: "7.5 - 9.5", characteristics: "This decendant of Challenger exhibits notes of cedar, pine, and spice.", substitutes: ["Challenger", "Northern Brewer"])
    let northernBrewer = Hop(name: "Northern Brewer", alphaAcids: "7 - 10", characteristics: "Woody and pepery, this English developed variety is gorwn mainly in the US and Germany.", substitutes: ["Chinook", "Galena"])
    let nugget = Hop(name: "Nugget", alphaAcids: "13.5 - 16", characteristics: "Herbaceous, and woody.", substitutes: ["Columbus", "Galena", "Magnum"])
    let pacifica = Hop(name: "Pacifica", alphaAcids: "5 - 6", characteristics: "One of New Zealand's fienst, Pacifica has the same orange zest and mango notes that make other Southern Hemisphere hops so desireable, with a lower alpha acid content.", substitutes: ["Hallertau"])
    let perle = Hop(name: "Perle", alphaAcids: "6 - 9", characteristics: "Perle is distinguished by aromas of earth and spice. Like English breakfast tea", substitutes: ["Northern Brewer"])
    let saaz = Hop(name: "Saaz", alphaAcids: "2.5 - 4.5", characteristics: "One of the four noble hops, Saaz is light, floral and delicate.", substitutes: ["Sterling"])
    let santiam = Hop(name: "Santiam", alphaAcids: "6 - 8.5", characteristics: "Black pepper and pine tar.", substitutes: ["Spalt", "Tettnang", "Select"])
    let saphir = Hop(name: "Saphir", alphaAcids: "2 - 4", characteristics: "Striking at the delicate character of noble hops with more zest and fruit.", substitutes: ["Hallertau", "Saaz"])
    let simcoe = Hop(name: "Simcoe", alphaAcids: "11.5 - 15", characteristics: "Resinous and piney with a sharp lasting bitterness, Simcoe is replete with aromas of tar, earth and juniper.", substitutes: ["Magnum", "Summit"])
    let sorachiAce = Hop(name: "Sorachi Ace", alphaAcids: "11.5 - 14.5", characteristics: "Developed in Japan for Sapporo, Sorachi Ace hits the high notes of bitter North American Varietals, and the floral notes of ", substitutes: ["Motueka", "Glacier"])
    let spalt = Hop(name: "Spalt", alphaAcids: "2.5 - 5.5", characteristics: "A noble analog, Spalt is floral and light.", substitutes: ["Saaz", "Tettnang"])
    let sterling = Hop(name: "Sterling", alphaAcids: "5.5 - 8.5", characteristics: "Bred to emulate the noble aroma profile of Saaz, Sterling hits close to the mark with a slightly spicier profile.", substitutes: ["Saaz"])
    let styrianGolding = Hop(name: "Styrian Golding", alphaAcids: "2.8 - 6", characteristics: "Styrian was derived from Fuggle, and shares many of the classic english qualities of that hop in a perhaps more refined continental package. Pepper, and earth.", substitutes: ["Fuggle", "Willamette"])
    let summit = Hop(name: "Summit", alphaAcids: "15 - 17", characteristics: "Pepper, clove, fennel, and citrus zest are all common flavor descriptors for this high alpha acid bittering hop.", substitutes: ["Columbus", "Simcoe"])
    let target = Hop(name: "Target", alphaAcids: "9.5 - 12.5", characteristics: "Bay leaf, liquorice, pepper and citrus.", substitutes: ["Fuggle", "Willamette"])
    let tettnang = Hop(name: "Tettnang", alphaAcids: "4 - 6", characteristics: "Also sometimes called Tettnanger, American and Swiss varieties are genetically distinct, but funtionally similar enough. Decended from Saaz (with the possible influence of Fuggle for the American variety) Tettnang has all of the spice and noble subtlety of it's forebearers.", substitutes: ["Spalter", "Saaz", "Tradition"])
    let tradition = Hop(name: "Tradiditon", alphaAcids: "4 - 7", characteristics: "Pepper and honeysuckle, with orange blossom and marmalade.", substitutes: ["Liberty", "Hallertau"])
    let wakatu = Hop(name: "Wakatu", alphaAcids: "6.5 - 8.5", characteristics: "A New Zealand derivative of Hallertau, this variety has more lime and lemon zest aromas, with the same floral notes.", substitutes: ["Hallertau", "Motueka"])
    let warrior = Hop(name:"Warrior", alphaAcids: "14 - 18", characteristics: "Famously used in Dogfish Head's 60 minute IPA, this proprietary strain from Select Botanicals Group is noted for it's aroma of spice and citrus.", substitutes: ["Nugget", "Columbus"])
    let willamette = Hop(name: "Willamette", alphaAcids: "4 - 6", characteristics: "Bright, herbaceous, floral and earthy notes make this popular American variety a dynamo for aroma aplications.", substitutes: ["Fuggle", "Styrian Golding", "Tettnag"])
    
    override func viewDidLoad() {
        let backgroundImage = UIImage(named: "Bitmap.png")
        let imageView = UIImageView(image: backgroundImage)
        self.tableView.backgroundView = imageView
        
        
        
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
        hops.append(fuggle)
        hops.append(galena)
        hops.append(golding)
        hops.append(hallertau)
        hops.append(horizon)
        hops.append(liberty)
        hops.append(magnum)
        hops.append(mandarinaBavaria)
        hops.append(merkur)
        hops.append(millennium)
        hops.append(motueka)
        hops.append(mtHood)
        hops.append(mtRainer)
        hops.append(newport)
        hops.append(northdown)
        hops.append(northernBrewer)
        hops.append(nugget)
        hops.append(pacifica)
        hops.append(perle)
        hops.append(saaz)
        hops.append(santiam)
        hops.append(saphir)
        hops.append(simcoe)
        hops.append(sorachiAce)
        hops.append(spalt)
        hops.append(sterling)
        hops.append(styrianGolding)
        hops.append(summit)
        hops.append(target)
        hops.append(tettnang)
        hops.append(tradition)
        hops.append(wakatu)
        hops.append(warrior)
        hops.append(willamette)
        
        
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

        cell.backgroundColor = UIColor(white: 1, alpha: 0.5)

        
        return cell
    }
    
//    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
//        cell.backgroundColor = UIColor(white: 1, alpha: 0.5)
//    }

    
    
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
