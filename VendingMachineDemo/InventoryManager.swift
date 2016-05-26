//
//  InventoryManager.swift
//  VendingMachineDemo
//
//  Created by Tyler Freeman on 5/25/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import Foundation

class InventoryManager {
    
    let inventory: [String : VendingMachineItem] = [String : VendingMachineItem]()
 
    init() {
        
    }
    
    /**
    *
    * Unwrapping
    * ===========================================
    * If a value may be nil it must be unwrapped.
    *
    * The two operators for unwarpping are ! and ?
    * The difference between these are:
    * ! will throw a run-time error if a nil value is
    *       is accesed
    * ? will allow properties of a possibly nil value
    *       to be accessed without throwing an error.
    *
    **/
    
    /**
    * Will throw a runtime error if no item exists in with key
    **/
    func getItemByTitle (itemTitle: String) -> VendingMachineItem {
        return inventory[itemTitle]!
    }
    
    /**
    * Will not throw an error if item does not exist
    **/
    func tryGetItemPriceByTitle (itemTitle: String) -> Double {
        if let itemPrice = inventory[itemTitle]?.price {
            return itemPrice
        } else {
            return Double(0)
        }
    }
    
}