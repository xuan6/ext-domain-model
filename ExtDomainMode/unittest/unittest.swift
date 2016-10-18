//
//  unittest.swift
//  unittest
//
//  Created by Xuan Liu on 16/10/18.
//  Copyright © 2016年 Xuan Liu. All rights reserved.
//

import XCTest
import ExtDomainModel

class MoneyTests: XCTestCase {
    
    let usd1 = Money(amount:5, currency:"USD")
    let usd2 = Money(amount:2, currency:"USD")
    
    
    func testAdd(){
        let result = +(left:usd1, right:usd2)
        XCTAssert(result.currency == "USD")
        XCTAssert(result.amount == 7)
    }
    
    func testSub(){
        let result = -(left:usd1, right:usd2)
        XCTAssert(result.currency == "USD")
        XCTAssert(result.amount == 3)
    }
    
    
}
