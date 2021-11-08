//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Jameson Hurst on 11/5/21.
//

import Foundation

struct ExpenseItem: Identifiable, Codable, Equatable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
