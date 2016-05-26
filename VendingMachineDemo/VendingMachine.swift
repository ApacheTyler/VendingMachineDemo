//
//  VendingMachine.swift
//  VendingMachineDemo
//
//  Created by Tyler Freeman on 5/25/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import Foundation

class VendingMachine {
    
    
    let inventory: InventoryManager
    
    let noMoneyState: IVendingState
    let hasMoneyState: IVendingState
    
    var currentState: IVendingState
    
    var currentMoney: Double
    
    var currentMessage: String
    
    init() {
        self.inventory = InventoryManager()
        self.noMoneyState = NoMoneyState()
        self.hasMoneyState = HasMoneyState()
        self.currentState = self.noMoneyState
        self.currentMoney = 0
        self.currentMessage = VendingMachineMessages.defaultMessage
    }
    
    func insertMoney (moneySlot: IMoneySlot) -> Void {
        self.currentState.insertMoney(moneySlot, vendingMachine: self)
    }
    
    func ejectMoney () -> Void {
        self.currentState.ejectMoney(self)
    }
    
    func vendItem () -> Void {
        self.currentState.vendItem(self)
    }
    
    func addMonies (moniesToAdd: Double) -> Void {
        self.currentMoney += moniesToAdd
    }
    
    func setCurrentMessage (messageToSet: String) -> Void {
        self.currentMessage = messageToSet
    }
    
    func setCurrentState (newCurrentState: IVendingState) -> Void {
        self.currentState = newCurrentState
    }
    
}