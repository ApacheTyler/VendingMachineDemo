//
//  HasMoneyState.swift
//  VendingMachineDemo
//
//  Created by Tyler Freeman on 5/25/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import Foundation

class HasMoneyState: BaseVendingMachineState, IVendingState {
    
    func insertMoney(moneySlot: IMoneySlot, vendingMachine: VendingMachine) {
        self.updateVendingMachinesMoney(moneySlot, vendingMachine: vendingMachine)
    }
    
    func ejectMoney(vendingMachine: VendingMachine) {
        self.ejectMoney(vendingMachine)
        vendingMachine.setCurrentMessage(VendingMachineMessages.eject)
    }
    
    func vendItem(vendingMachine: VendingMachine) {
        //TODO: Implement
        //Check if item exits in inventory and current money is greater than or equal to current price.
        if (true) {
            vendingMachine.setCurrentMessage(VendingMachineMessages.notEnoughMoney)
        } else {
            vendingMachine.setCurrentMessage(VendingMachineMessages.vending)
        }
    }
    
}