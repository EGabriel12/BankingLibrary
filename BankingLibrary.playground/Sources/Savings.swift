import Foundation

public class SavingsAccount: BasicAccount {
    private var interestRate: Double
    private let pin: Int
    
    public init(interestRate: Double, pin: Int) {
        self.interestRate = interestRate
        self.pin = pin
    }
    
    public func processInterest(pin: Int) {
        if self.pin == pin {
            let interest = balance * interestRate
            deposit(amount: interest)
        }
    }
}
