//
//  Exchange.swift
//  Exchange
//
//  Created by 이재영 on 2021/01/26.
//

import Foundation

struct Exchange {
    let country: String
    let exchangeValue: Float
    let unit: String
    
    init(country: String, exchangeValue: Float) {
        self.country = country
        self.exchangeValue = exchangeValue
        self.unit = "won"
    }
    
    init(country: String, exchangeValue: Float, unit: String) {
        self.country = country
        self.exchangeValue = exchangeValue
        self.unit = unit
    }
}
