//: Playground - noun: a place where people can play

import UIKit


struct Book {
    var name: String!
    var author: String!
    var genre: String!
    var pageLength: Int
    
//    func bark(volume: String) {
//        print("roof")
//    }
//    
//    func growl(showTeeth: Bool) {
//        print("Grrrrr")
//    }
}

var howToReadSwiftBook = Book(name: "How to Read Swift", author: "Benjamin Netyhau", genre: "Education", pageLength: 1000)
var atlasShruggedBook = Book(name: "Atlas Shrugged", author: "Ayn Rand", genre: "Novel", pageLength: 2000)
var markTwainLetters = Book(name: "Mark Twain's Letters", author: "Mark Twain", genre: "Autobiography", pageLength: 120)
var iphoneDevelopment = Book(name: "iPhone Development 101", author: "A bunch of smart peole", genre: "Education", pageLength: 2500)

class Library {
    var libraryName: String?
    var libraryOwner: String?
    var booksInLibrary: Array<Book> = []
    
    func listBooksInLibrary() {
        for book in booksInLibrary {
            print(book.name)
        }
    }
}
var bgLibrary = Library()
    
bgLibrary.libraryName = "BG's Library"
bgLibrary.libraryOwner = "Brian Glowe"
bgLibrary.booksInLibrary.append(howToReadSwiftBook)
bgLibrary.booksInLibrary.append(atlasShruggedBook)
bgLibrary.booksInLibrary.count
bgLibrary.booksInLibrary.append(iphoneDevelopment)
bgLibrary.booksInLibrary.append(markTwainLetters)
// print(bgLibrary.booksInLibrary)
bgLibrary.listBooksInLibrary()
















