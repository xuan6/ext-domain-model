//
//  MontyTest.swift
//  ExtDomainModel
//
//  Created by Xuan Liu on 16/10/18.
//  Copyright © 2016年 Xuan Liu. All rights reserved.
//

import XCTest
import ExtDomainMode

class MontyTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
        
    func testCanICreateMoney1() { //BEAWARE all test must start literally with 'test'
        let twentyTwoEUR = Money(amount: 22, currency: "EUR")
        XCTAssert(twentyTwoEUR.description() == "EUR22.0")
    }
    
    func testCanICreateMoney2() {
        let fiftyFiveUSD = Money(amount: 55, currency: "USD")
        XCTAssert(fiftyFiveUSD.description() == "USD55.0")
    }
    
    func testAdd() {
        let money = Money(amount: 3, currency: "USD")
        let otherMoney = Money(amount: 2, currency: "USD")
        let resultMoney = Money(amount: 5, currency: "USD")
        XCTAssert((money + otherMoney).amount == 5)
        XCTAssert((money + otherMoney).currency == "USD")
        XCTAssert((money + otherMoney).amount == resultMoney.amount)
        XCTAssert((money + otherMoney).currency == resultMoney.currency)
    }
    
    func testSub() {
        let money = Money(amount: 3, currency: "USD")
        let otherMoney = Money(amount: 2, currency: "USD")
        let resultMoney = Money(amount: 1, currency: "USD")
        XCTAssert((money - otherMoney).amount == 1)
        XCTAssert((money - otherMoney).currency == "USD")
        XCTAssert((money - otherMoney).amount == resultMoney.amount)
        XCTAssert((money - otherMoney).currency == resultMoney.currency)
    }
    
    
    func testMoneyEUR() {
        let money1 = 150.0.EUR
        XCTAssert(money1.description() == "EUR150")
    }
    
    func testMoneyGBP() {
        let money1 = 150.0.GBP
        XCTAssert(money1.description() == "GBP150")
    }
    
    func testMoneyCAN() {
        let money1 = 150.0.CAN
        XCTAssert(money1.description() == "CAN150")
    }
}
