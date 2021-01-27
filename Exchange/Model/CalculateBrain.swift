//
//  CalculateBrain.swift
//  Exchange
//
//  Created by 이재영 on 2021/01/26.
//

import Foundation

struct CalculateBrain {
    
    var exchange : Exchange?
    
    
    func getCountry() -> String {
        return exchange!.country
    }
    
    func getExchangeValue() -> String {
        return String(format: "%.3f", exchange?.exchangeValue ?? 0.0)
    }
    
    func getUnit() -> String {
        return exchange!.unit
    }
    
    mutating func calculateExchange(country: String, exchangeValue: Float){
        if country == "USA" {
            let cal = 0.00091 * exchangeValue
            let unit = "Dollar"
            exchange = Exchange(country: country, exchangeValue: cal, unit: unit)
        }
        else if country == "Japan" {
            let cal = 0.094 * exchangeValue
            let unit = "Yen"
            exchange = Exchange(country: country, exchangeValue: cal, unit: unit)
        }
        else if country == "China" {
            let cal = 0.0059 * exchangeValue
            let unit = "Wian"
            exchange = Exchange(country: country, exchangeValue: cal, unit: unit)
        }
    }
}
