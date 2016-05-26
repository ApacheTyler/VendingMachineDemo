//
//  BaseVendingMachine.swift
//  VendingMachineDemo
//
//  Created by Tyler Freeman on 5/25/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import Foundation

class BaseVendingMachineState {
    
    func getMoneySlotValue (moneySlot: IMoneySlot) -> Double {
        return moneySlot.getValueOfInsertionSlot()
    }
    
    func updateVendingMachinesMoney (moneySlot: IMoneySlot, vendingMachine: VendingMachine) -> Void {
        let numberOfMoniesInserted = self.getMoneySlotValue(moneySlot)
        vendingMachine.currentMoney += numberOfMoniesInserted
    }
    
    func ejectVendingMachineMoney (vendingMachine: VendingMachine) -> Void {
        vendingMachine.currentMoney = 0.00
    }
    
}