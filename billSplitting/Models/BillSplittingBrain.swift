//
//  billSplittingBrain.swift
//  billSplitting
//
//  Created by Amr Abdaldayem on 03/07/2022.
//

import Foundation
import UIKit
struct BillSplittingBrain {
    var bill: Bill
    
    init(ammount: Float, tip: Int, splitter: Int)
    {
        bill = .init(Ammount: ammount, Tip: tip, Splitter: splitter)
    }
    
    mutating func setAmmount ( ammount: Float)
    {
        self.bill.ammount = ammount
    }
    
    mutating func setTip(tip: Int) {
        self.bill.tip = tip
    }
    func getTip() -> Int {
        return self.bill.tip!
    }
    mutating func setSplitter(splitter:Int)  {
        self.bill.splitter = splitter
    }
    
    func getSplitter() -> Int {
        return self.bill.splitter!
    }
    
    func calculateTotaPerPerson() -> Float {
        
        var temp:Float    = (bill.ammount! * Float(bill.tip!))/100
        temp = temp + Float( self.bill.ammount! )
        temp        = ( temp / Float(bill.splitter!))
        print(temp)
        return temp
    }
}
