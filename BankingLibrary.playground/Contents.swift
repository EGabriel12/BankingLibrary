import Foundation
import XCTest

func createAccount() -> some Account {
    CheckingAccount()
}

class BankingTests: XCTestCase {
    var checkingAccount: CheckingAccount!
    
    override func setUp() {
        super.setUp()
        checkingAccount = CheckingAccount()
    }
    
    override func tearDown() {
        super.tearDown()
        checkingAccount.withdraw(amount: checkingAccount.balance)
    }
    
    func testNewAccountBalanceZero() {
        XCTAssertEqual(checkingAccount.balance, 0.0)
    }
    
    func testCheckOverBudgetFails() {
        let check = checkingAccount.writeCheck(amount: 200.0)
        XCTAssertNil(check)
    }
    
    func testCheckIsCashed() {
        checkingAccount.deposit(amount: 500)
        let check = checkingAccount.writeCheck(amount: 200.0)
        XCTAssertNotNil(check)
    }
}

BankingTests.defaultTestSuite.run()
