//
//  NetworkConnection.swift
//  SportsStore
//
//  Created by Admin on 11/30/16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation

class NetworkConnection {
    
    fileprivate let stockData: [String: Int] = [
        "Kayak": 10, "Lifejacket": 4, "Soccer Ball": 32
    ]
    
    func getStockLevel(_ name:String) -> Int? {
        Thread.sleep(forTimeInterval: Double(arc4random() % 2))
        if let result = stockData[name] {
            return result
        }
        else {
            return -1
        }
    }
    
    
}
