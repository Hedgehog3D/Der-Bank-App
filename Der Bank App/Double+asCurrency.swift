//
//  Double+asCurrency.swift
//  Der Bank App
//
//  Created by Greg3D on 10/11/2020.
//  Copyright © 2020 Greg3D. All rights reserved.
//

import Foundation

extension Double {
    func asCurrency(_ symbol: String = "₽") -> String? {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencySymbol = symbol
        
        let number = NSNumber(value: self)
        return formatter.string(from: number)
    }
}
