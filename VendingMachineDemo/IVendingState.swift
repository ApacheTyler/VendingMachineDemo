//
//  File.swift
//  VendingMachineDemo
//
//  Created by Tyler Freeman on 5/25/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import Foundation

protocol IVendingState {
    
    func insertMoney(moneySlot: IMoneySlot, vendingMachine: VendingMachine) -> Void
    
    func ejectMoney(vendingMachine: VendingMachine) -> Void
    
    func vendItem(vendingMachine: VendingMachine) -> Void
    
}