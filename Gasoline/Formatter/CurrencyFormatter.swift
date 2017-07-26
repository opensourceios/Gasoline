//
//  CurrencyFormatter.swift
//  Gasoline
//
//  Created by Stefan Herold on 02.07.17.
//  Copyright © 2017 Stefan Herold. All rights reserved.
//

import UIKit

public struct CurrencyFormatter {

    public static let shared = CurrencyFormatter()
    private static let defaultString = "-,--"

    private init() {}

    private let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }()

    public func stringFromValue(value: Decimal?, currencyCode: String, maximumFractionDigits: Int = 2) -> String {
        guard let value = value else { return CurrencyFormatter.defaultString }
        formatter.minimumFractionDigits = maximumFractionDigits
        formatter.maximumFractionDigits = maximumFractionDigits
        formatter.currencyCode = currencyCode
        return formatter.string(from: value as NSDecimalNumber) ?? CurrencyFormatter.defaultString
    }
}
