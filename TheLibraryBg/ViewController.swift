//
//  ViewController.swift
//  TheLibraryBg
//
//  Created by Brian J Glowe on 9/30/15.
//  Copyright © 2015 Brian Glowe. All rights reserved.


import UIKit

class ViewController: UIViewController  {
    
    @IBOutlet weak var libraryListLabel: UILabel!
    @IBOutlet weak var bookNameText: UITextField!
    @IBOutlet weak var authorText: UITextField!
    @IBOutlet weak var genreText: UITextField!
    @IBOutlet weak var pageLengthText: UITextField!
    @IBOutlet weak var updateLibraryLabel: UILabel!
    
    var bookTitle = ""
    var bookAuthor = ""
    var bookGenre = ""
    var bookPageLength: Int?
    var myLib = Library()
    
//    var myBookNames = [String]()    // testing

    override func viewDidLoad() {
        super.viewDidLoad()
//        updateLibraryLabel.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func clearOutText() {
        bookNameText.text = ""
        authorText.text = ""
        genreText.text = ""
        pageLengthText.text = ""
    }
    
//    func promptUserOfUpdate() {
//        updateLibraryLabel.hidden = false
//        updateLibraryLabel.text = "New book, Saweet!"  // LOW -maybe add a timer to hide label text after 3 seconds
//    }
    
    func addBookToLibrary() {
        bookTitle = bookNameText.text!
        bookAuthor = authorText.text!
        bookGenre = genreText.text!
        bookPageLength = Int(pageLengthText.text!)
        
        let newBook = Book(name: bookTitle, author: bookAuthor, genre: bookGenre, pageLength: bookPageLength!)
        myLib.booksInLibrary.append(newBook)
        
        updateLibraryLabel.text = "\(newBook.name) added to the libray"

        libraryListLabel.text = libraryListLabel.text! + "\(newBook.name)\n" // this should print book name
        
//        // testing adding only the newBook.name to myBookNames array
//        let newBookName = newBook.name
//        myBookNames.append(newBookName) // now confirm the book name is added to new array
        
    }
    
    
//    func applyBookNameToLabel() {
//    
//       //  this approach is returning the book: name to the console, but not putting the text on the label
//        for var i=0; i <= myLib.booksInLibrary.count; i++ {
//          libraryListLabel.text = libraryListLabel.text! + "\(myLib.listBooksInLibrary())"
//        }
//    }
    
    
    @IBAction func addBookToLibrary(sender: AnyObject) {
        addBookToLibrary()
//        promptUserOfUpdate()
        clearOutText()
        
        //       libraryListLabel.text = myLib.listBooksInLibrary()
    }
    
    
    @IBAction func editBookButton(sender: AnyObject) {
        print("Edit Button Pressed")
        print(myLib.booksInLibrary.count)
    }
    
    @IBAction func deleteBookButton(sender: AnyObject) {
        print("Delete button pressed")
   //     applyBookNameToLabel()
        
        
        //      myLib.listBooksInLibrary()
              //^^this will access the book:name property, but I cannot assign to text field
        }
    }

struct Book {
    var name: String!
    var author: String!
    var genre: String!
    var pageLength: Int
}

class Library {
    var booksInLibrary = [Book]()
    // var booksNameArray = []()
    // var bookNames = [Book.name]()
    
    func listBooksInLibrary() {
        for book in booksInLibrary {
            print(book.name)
            //   return(book.name)         // why cannot i not return the string?
        }                               // Erika say that i need to take the book.name property and add it to a
                                        // new array inside the Library class.  this array will hold specifically
                                        // the book names.  This array can then be called and assigned to a label
                                        // to display the book names
    }
}




// Need to figure out why the Book Struct properties are not accessible --
// I think access the Book's name property will print only the title of book

/*
i think to add the name of each book inthe array to a label or list view on the UI, 
I will need to return the Book's name property (through dot notation).


*/




