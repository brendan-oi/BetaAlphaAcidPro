//
//  HopViewController.swift
//  BetaAlphaAcidPro
//
//  Created by Brendan Incorvaia on 7/21/17.
//  Copyright © 2017 Brendan Incorvaia. All rights reserved.
//

import UIKit

class HopViewController: UIViewController {

    
    @IBOutlet weak var hopViewNameLabel: UILabel!
    @IBOutlet weak var hopViewAlphaAcidLabel: UILabel!
    @IBOutlet weak var characteristicsTextView: UITextView!
    @IBOutlet weak var substitutesTextView: UITextView!
    
    
    var hop: Hop?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let hop = hop {
            hopViewNameLabel.text = hop.name
            hopViewAlphaAcidLabel.text = hop.alphaAcids
            characteristicsTextView.text = hop.characteristics
            let hopSubArray = hop.substitutes
            let joiner = ", "
            substitutesTextView.text = hopSubArray.joined(separator: joiner)
            
        }
        characteristicsTextView.layer.cornerRadius = 5
        characteristicsTextView.clipsToBounds = true
        
        
        substitutesTextView.layer.cornerRadius = 5
        substitutesTextView.clipsToBounds = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
