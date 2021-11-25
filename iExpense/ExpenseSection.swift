//
//  ExpenseSection.swift
//  iExpense
//
//  Created by Jameson Hurst on 11/5/21.
//

import SwiftUI

struct ExpenseSection: View {
    let title: String
    let expenses: [ExpenseItem]
    let deleteItems: (IndexSet) -> Void
    
    var body: some View {
        Section(title) {
            ForEach(expenses) { item in
                HStack {
                    VStack(alignment: .leading) {
                        Text(item.name)
                            .font(.headline)
                        Text(item.type)
                    }
                    
                    Spacer()
                    
                    Group {
                        if item.amount < 10 {
                            Image(systemName: "circle.fill")
                                .foregroundColor(.green)
                        } else if item.amount < 100 {
                            Image(systemName: "circle.fill")
                                .foregroundColor(.yellow)
                        } else {
                            Image(systemName: "circle.fill")
                                .foregroundColor(.red)
                        }
                    }
                    
                    Text(item.amount, format: .localCurrency)
                }
            }
            .onDelete(perform: deleteItems)
        }
    }
}

struct ExpenseSection_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseSection(title: "Example", expenses: []) { _ in }
    }
}
