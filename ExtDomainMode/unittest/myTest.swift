//
//  unittest.swift
//  unittest
//
//  Created by Xuan Liu on 16/10/18.
//  Copyright © 2016年 Xuan Liu. All rights reserved.
//

import XCTest
import ExtDomainMode

class CustomMoneyTest: XCTestCase {
    
    func testCanICreateMoney1() {
        let twentyTwoEUR = Money(amount: 22, currency: "EUR")
        XCTAssert(twentyTwoEUR.description() == "EUR22.0")
    }
    
    func testCanICreateMoney2() {
        let fiftyTwoUSD = Money(amount: 52, currency: "USD")
        XCTAssert(fiftyTwoUSD.description() == "USD52.0")
    }
    
    func testAdd() {
        let money = Money(amount: 35, currency: "USD")
        let otherMoney = Money(amount: 20, currency: "USD")
        let resultMoney = Money(amount: 55, currency: "USD")
        XCTAssert((money + otherMoney).amount == 55)
        XCTAssert((money + otherMoney).currency == "USD")
        XCTAssert((money + otherMoney).amount == resultMoney.amount)
        XCTAssert((money + otherMoney).currency == resultMoney.currency)
    }
    
    func testSub() {
        let money = Money(amount: 35, currency: "USD")
        let otherMoney = Money(amount: 20, currency: "USD")
        let resultMoney = Money(amount: 15, currency: "USD")
        XCTAssert((money - otherMoney).amount == 15)
        XCTAssert((money - otherMoney).currency == "USD")
        XCTAssert((money - otherMoney).amount == resultMoney.amount)
        XCTAssert((money - otherMoney).currency == resultMoney.currency)
    }
    
    
    func testMoneyEUR() {
        let money1 = 150.0.EUR
        XCTAssert(money1.description() == "EUR100.0")
    }
    
    func testMoneyGBP() {
        let money1 = 150.0.GBP
        XCTAssert(money1.description() == "GBP300.0")
    }
    
    func testMoneyCAN() {
        let money1 = 150.0.CAN
        XCTAssert(money1.description() == "CAN120.0")
    }
    
}
