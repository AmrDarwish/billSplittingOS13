//
//  Blii.swift
//  billSplitting
//
//  Created by Amr Abdaldayem on 03/07/2022.
//

import Foundation
struct Bill {
    var ammount : Float?
    var tip     : Int?
    var splitter: Int?
    
    init(Ammount: Float, Tip: Int, Splitter: Int) {
        self.ammount  = Ammount
        self.tip      = Tip
        self.splitter = Splitter
    }
}
