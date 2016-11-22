import Foundation

var myVariable = 42;
myVariable = 50;
let myConstant = 42;

// Specify the type
let implicitInteger = 70;
let implicitDouble = 70.0;
let explicitDouble: Double = 70;


// Explicitly type transfer
let label = "The width is ";
let width = 94;
let widthLabel = label + String(width);

// Introduce values in a string
let apples = 3;
let oranges = 5;
let appleSummary = "I have \(apples) apples.";
let fruitSummary = "I have \(apples + oranges) pieces of fruit.";

// Array and dictionary
var shoppingList = ["catfish", "water", "tulips", "blue paint"];
shoppingList[1] = "bottle of water";

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
];
occupations["Jayne"] = "Public Relations";

// Initialize array and dictionary
let emptyArray = [String]()
let emptyDictionary = [String: Float]()

// Initialize array and dictionary with inferred type
shoppingList = []
occupations = [:]
