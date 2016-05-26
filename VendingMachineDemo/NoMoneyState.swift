//
//  NoMoneyState.swift
//  VendingMachineDemo
//
//  Created by Tyler Freeman on 5/25/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import Foundation

class NoMoneyState: BaseVendingMachineState, IVendingState {
    
    func insertMoney(moneySlot: IMoneySlot, vendingMachine: VendingMachine) -> Void {
        self.updateVendingMachinesMoney(moneySlot, vendingMachine: vendingMachine)
        vendingMachine.setCurrentState(VendingMachineStates.HAS_MONEY_STATE)
    }
    
    func ejectMoney(vendingMachine: VendingMachine) -> Void {
        vendingMachine.setCurrentMessage(VendingMachineMessages.ejectWithNoMoney)
    }
    
    func vendItem(vendingMachine: VendingMachine) -> Void {
        vendingMachine.setCurrentMessage(VendingMachineMessages.notEnoughMoney)
    }
    
}