//
//  StockValueFactories.swift
//  SportsStore
//
//  Created by Admin on 12/14/16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation

class StockTotalFactory {
    enum Currency {
        case USD
        case GBP
    }
    var formatter:StockValueFormatter?;
    var converter:StockValueConverter?;
    
    class func getFactory(curr:Currency) -> StockTotalFactory {
        if (curr == Currency.USD) {
            return DollarStockTotalFactory.sharedInstance;
        } else {
            return PoundStockTotalFactory.sharedInstance;
        }
    }
}
private class DollarStockTotalFactory : StockTotalFactory {
    private override init() {
        super.init();
        formatter = DollarStockValueFormatter();
        converter = DollarStockValueConverter();
    }
    class var sharedInstance:StockTotalFactory {
        get {
            struct SingletonWrapper {
                static let singleton = DollarStockTotalFactory();
            }
            return SingletonWrapper.singleton;
        }
    }
}
private class PoundStockTotalFactory : StockTotalFactory {
    private override init() {
        super.init();
        
        formatter = PoundStockValueFormatter();
        converter = PoundStockValueConverter();
        
    }
    class var sharedInstance:StockTotalFactory {
        get {
            struct SingletonWrapper {
                static let singleton = PoundStockTotalFactory();
            }
            return SingletonWrapper.singleton;
        }
    }
}

