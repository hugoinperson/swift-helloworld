import Foundation

// present errors using any type that adopts "Error" protocal
enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

// if a function throws an error, then need to add "throws" keyword to mark this
func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}

// catch an error
do {
    let printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")
    print(printerResponse)
} catch {
    print(error)
}

// multiple catches
do {
    let printerResponse = try send(job: 1440, toPrinter: "kk")
    print(printerResponse)
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch {
    print(error)
}


// if use "try?" and there's an error thrown, then the returned value will be "nil"
let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler");
let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner");


// "defer" block will get executed before function returns no matter it's an error or not
var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }
    
    let result = fridgeContent.contains(food)
    return result
}
fridgeContains("banana")
print(fridgeIsOpen)
