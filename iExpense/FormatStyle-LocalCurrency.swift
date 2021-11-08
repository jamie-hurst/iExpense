//
//  FormatStyle-LocalCurrency.swift
//  iExpense
//
//  Created by Jameson Hurst on 11/5/21.
//

import Foundation

extension FormatStyle where Self == FloatingPointFormatStyle<Double>.Currency {
    static var localCurrency: Self {
        .currency(code: Locale.current.currencyCode ?? "USD")
    }
}
