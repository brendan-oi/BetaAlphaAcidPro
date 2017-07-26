//
//  FirstViewController.swift
//  BetaAlphaAcidPro
//
//  Created by Brendan Incorvaia on 7/20/17.
//  Copyright © 2017 Brendan Incorvaia. All rights reserved.
//

import Foundation
import UIKit

class AlphaAcidCalcViewController: UIViewController {
    
    @IBOutlet weak var originalAA: UITextField!
    @IBOutlet weak var originalQuantity: UITextField!
    @IBOutlet weak var revisedAA: UITextField!
    @IBOutlet weak var revisedQuantity: UITextField!
    
    @IBOutlet weak var originalAALabel: UILabel!
    @IBOutlet weak var originalQuantityLabel: UILabel!
    @IBOutlet weak var revisedAALabel: UILabel!
    
    @IBAction func originalAAEdited(_ sender: Any) {
        if originalAA.text != "" {
            UIView.animate(withDuration: 0.3, animations: {
                self.originalAALabel.alpha = 1
            })
        } else {
            UIView.animate(withDuration: 0.15, animations: {
                self.originalAALabel.alpha = 0
            })
        }
    }
    
    @IBAction func originalQuantityEdited(_ sender: Any) {
        if originalQuantity.text != "" {
            UIView.animate(withDuration: 0.3, animations: {
                self.originalQuantityLabel.alpha = 1
            })
        } else {
            UIView.animate(withDuration: 0.15, animations: {
                self.originalQuantityLabel.alpha = 0
            })
        }

    }
    
    @IBAction func revisedAAEdited(_ sender: Any) {
        if revisedAA.text != "" {
            UIView.animate(withDuration: 0.3, animations: {
                self.revisedAALabel.alpha = 1
            })
        } else {
            UIView.animate(withDuration: 0.15, animations: {
                self.revisedAALabel.alpha = 0
            })
        }
    }

    
    
    
    func textFieldDidChange(_ textField: UITextField) {
        let newQtAsString = calculateRevisedQuantity()
        revisedQuantity.text = newQtAsString
    }
    
    func calculateRevisedQuantity() -> String {
        if let ogAA = Double(originalAA.text!), let ogQt = Double(originalQuantity.text!), let newAA = Double(revisedAA.text!) {
            let newQt = Double((ogAA * ogQt) / newAA)
            let roundedNewQt = round(newQt * 100) / 100
            return String(roundedNewQt)
        } else { return " "
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        originalAALabel.alpha = 0
        originalQuantityLabel.alpha = 0
        revisedAALabel.alpha = 0
        

        originalAA.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        originalQuantity.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        revisedAA.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

