//
//  Hop.swift
//  BetaAlphaAcidPro
//
//  Created by Brendan Incorvaia on 7/20/17.
//  Copyright © 2017 Brendan Incorvaia. All rights reserved.
//

import Foundation

class Hop {
    
    var name : String
    var alphaAcids : String
    var characteristics : String
    var substitutes : [String]

    init (name: String, alphaAcids: String, characteristics: String, substitutes: [String]) {
        self.name = name
        self.alphaAcids = alphaAcids
        self.characteristics = characteristics
        self.substitutes = substitutes
    }
    
}

