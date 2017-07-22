//
//  HopViewController.swift
//  BetaAlphaAcidPro
//
//  Created by Brendan Incorvaia on 7/21/17.
//  Copyright © 2017 Brendan Incorvaia. All rights reserved.
//

import UIKit

class HopViewController: UIViewController {

    
    @IBOutlet weak var hopNameTextField: UITextField!
    @IBOutlet weak var alphaAcidsTextField: UITextField!
    @IBOutlet weak var characteristicsTextView: UITextView!
    @IBOutlet weak var substitutesTextView: UITextView!
    
    override func viewWillAppear(_ animated: Bool) { super.viewWillAppear(animated)
       
        hopNameTextField.text = ""
        alphaAcidsTextField.text = ""
        characteristicsTextView.text = ""
        substitutesTextView.text = ""
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
