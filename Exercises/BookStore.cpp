#include <iostream>
#include <string>
#include <vector>

using namespace std;

class Book {
// Everything in a class is public by default unlike structs. Just doing for demonstration.
public:
    int bookCode = 0, currentStock = 0, enrollment = 0;
    bool isRequired = true, isNew = true;
    double price = 0.0;

    int getRequiredNumber();

    double getTotalCost();
};

int Book::getRequiredNumber() {
    if (isRequired && isNew) {
        return static_cast<int>(enrollment * 0.90 - currentStock);
    } else if (isRequired && !isNew) {
        return static_cast<int>(enrollment * 0.65 - currentStock);
    } else if (!isRequired && isNew) {
        return static_cast<int>(enrollment * 0.40 - currentStock);
    } else {
        return static_cast<int>(enrollment * 0.20 - currentStock);
    }
}

double Book::getTotalCost() {
    return getRequiredNumber() * price;
}

Book createBook() {
    Book myBook = Book();

    cout << "Please enter the book code:";
    cin >> myBook.bookCode;
    cout << " single copy price:";
    cin >> myBook.price;
    cout << " number on hand:";
    cin >> myBook.currentStock;
    cout << " prospective enrollment";
    cin >> myBook.enrollment;
    cout << " 1 for required/0 for optional:";
    cin >> myBook.isRequired;
    cout << "1 for new/0 for used:";
    cin >> myBook.isNew;

    return myBook;
}

void printBookInfo(Book myBook) {
    cout << "***************************************************" << endl;
    cout << "Book: " << myBook.bookCode << endl;
    cout << "Price: $" << myBook.price << endl;
    cout << "Inventory: " << myBook.currentStock << endl;
    cout << "Enrollment: " << myBook.enrollment << endl;

    string requiredString, usedString;
    if (myBook.isRequired) {
        requiredString = "required";
    } else {
        requiredString = "optional";
    }

    if (myBook.isNew) {
        usedString = "new";
    } else {
        usedString = "used";
    }

    cout << endl;
    cout << "This Book is " << requiredString << " and " << usedString << endl;
    cout << "***************************************************" << endl;
    cout << "Need to order: " << myBook.getRequiredNumber() << endl;
    cout << "Total Cost: " << myBook.getTotalCost() << endl;
    cout << "***************************************************" << endl;
    cout << endl;
}

void printSummary(vector<Book> &books) {
    double overallTotalCost = 0.0, profit;

    for (Book book : books) {
        overallTotalCost += book.getTotalCost();
    }

    profit = overallTotalCost - overallTotalCost * 0.8;

    cout << "***************************************************" << endl;
    cout << "Total for all orders: $" << overallTotalCost << endl;
    cout << "Profit: $" << profit << endl;
    cout << "***************************************************" << endl;
}

int askPrompt() {
    int input = 0;
    cout << "Enter 1 to do another book, 0 to stop. 0";
    cin >> input;
    cout << endl;

    return input;
}

int main() {
    vector<Book> books = vector<Book>();

    Book book00 = createBook();
    books.push_back(book00);
    printBookInfo(book00);

    while (askPrompt()) {
        Book book = createBook();
        books.push_back(book);
        printBookInfo(book);
    }

    printSummary(books);

    return 0;
}

