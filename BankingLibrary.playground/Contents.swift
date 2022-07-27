import Foundation

let johnChecking = CheckingAccount()
johnChecking.deposit(amount: 300.0)

let check = johnChecking.writeCheck(amount: 200.0)!

let janeChecking = CheckingAccount()
janeChecking.deposit(check)
janeChecking.balance

janeChecking.deposit(check)
janeChecking.balance

func createAccount() -> some Account {
    CheckingAccount()
}
