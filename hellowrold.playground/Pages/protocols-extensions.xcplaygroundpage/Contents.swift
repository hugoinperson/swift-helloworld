import Foundation


// declare a protocal
protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

// a class adopts the protocal
class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    // doesn't need "mutating" keyword since class method can always modify the class
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}
var a = SimpleClass();
a.adjust();
let aDescription = a.simpleDescription;

// a structure adopts the protocal
struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    // "mutating" has to be added since the method modifies the structure
    mutating func adjust() {
        simpleDescription += " (adjusted)";
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

// use "extension" to extend the functionality of a type
extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)";
    }
    mutating func adjust() {
        self += 42;
    }
}
print(7.simpleDescription);


extension Double {
    func absoluteValue() -> Double {
        return self >= 0 ? self : -(self);
    }
}

(-2.3).absoluteValue();


// protocal can be used as a type
let protocolValue: ExampleProtocol = a;
print(protocolValue.simpleDescription);
// print(protocolValue.anotherProperty);