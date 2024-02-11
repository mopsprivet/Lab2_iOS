//Task 1
import UIKit
print("Task 1 \n")

class BankAccount {
    var accountNumber: String
    var accountOwner: String
    var balance: Double
    
    init(accountNumber: String, accountOwner: String, balance: Double) {
        self.accountNumber = accountNumber;
        self.accountOwner = accountOwner;
        self.balance = balance;
    }
    
    func deposit(amount: Double) -> Double {
        if amount > 0 {
            balance += amount
            print("Successful replenishment of the account for \(amount). Your balance: \(balance) \n")
        } else {
            print("Error: You're trying to deposit your account with a negative amount. Please, enter the correct amount. \n")
        }
        return balance
    }
    
    func withdraw(amount: Double) -> Double {
        if amount > 0 && balance > 0 {
            balance -= amount
            print("Successful withdrawal of \(amount). Your balance: \(balance) \n")
        }
        else if amount <= 0 {
            print("Error: You're trying to withdraw a negative amount. Please, enter the correct ammount.\n ")
        }
        else if balance == 0 {
            print("Error: Insufficient amount in your account. \n ")
        }
        else {
            print("Error.\n ")
        }
        return balance
    }
    
    func info() -> String {
        var info = "ACCOUNT INFO \n Account Number: \(accountNumber) \n Account Owner: \(accountOwner) \n Account Balance: \(balance)"
        return info
    }
}

let bankAccount1 = BankAccount(accountNumber: "4400311499873518", accountOwner: "Anastasiya", balance:100000.0);
bankAccount1.accountNumber;
bankAccount1.accountOwner;
bankAccount1.balance;


let bankAccount2 = BankAccount(accountNumber: "4400546829451098", accountOwner: "Zeliboba", balance:58000.99);
bankAccount2.accountNumber;
bankAccount2.accountOwner;
bankAccount2.balance;


print(bankAccount1.info() + "\n")
bankAccount1.deposit(amount: 158000)
print(bankAccount1.info() + "\n")



//Task 2
print("\n Task 2 \n")

class Book {
    var title: String
    var author: String
    var year: Int
    var pageCount: Int
    
    init(title: String, author: String, year: Int, pageCount: Int) {
        self.title = title
        self.author = author
        self.year = year
        self.pageCount = pageCount
    }
    
    func bookInfo() -> String {
        return "BOOK INFO \n Title: \(title) \n Author: \(author) \n Year: \(year) \n Number of pages: \(pageCount) \n"
    }
}

let book1 = Book(title: "Inferno", author: "Dan Brown", year: 2013, pageCount: 544)
let book2 = Book(title: "1984", author: "George Orwell", year: 1949, pageCount: 320)


class Library {
    var library: [Book] = []
    
    func addBook(book: Book) {
        library.append(book)
        print("Book added to the library:")
        print(book.bookInfo())
    }
    
    func removeBook(title: String) {
        if let index = library.firstIndex(where: { $0.title == title }) {
            let removedBook = library.remove(at: index)
            print("Book removed from the library:")
            print(removedBook.bookInfo())
        } else {
            print("Book with title \(title) not found in the library.")
        }
    }
    
    func libraryInfo() {
        if library.isEmpty {
            print("The library is empty.")
        } else {
            print("LIBRARY INFO:")
            for book in library {
                print(book.bookInfo())
            }
        }
    }
}

let library1 = Library()
library1.addBook(book: book1)
library1.addBook(book: book2)

print(library1.libraryInfo())
