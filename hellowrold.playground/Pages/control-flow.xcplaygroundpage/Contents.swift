import Foundation

// Basical conditional and loop control flow
let individualScores = [75, 43, 103, 87, 12];
var teamScore = 0;
for score in individualScores {
    if score > 50 {
        teamScore += 3;
    } else {
        teamScore += 1;
    }
}
print(teamScore);

// Avoid C-style loop
for i in 0 ..< individualScores.count {
    print(individualScores[i]);
}

// Optional value
var optionalString: String? = "Hello";
print(optionalString == nil);

// Use if + let
var optionalName: String? =  "Jerry";
var greeting = "Hello!";
if let name = optionalName {
    greeting = "Hello, \(name)";
} else {
    greeting = "Hi";
}

// Default value for optional value
let nickName: String? = nil;
let fullName: String = "John Appleseed";
let informalGreeting = "Hi \(nickName ?? fullName)";

// Switch
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.");
case "cucumber", "watercress":
    print("That would make a good tea sandwich.");
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?");
default:
    print("Everything tastes good in soup.");
}

// Loop in dictionary
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
];
var largest = 0;
var largestType = "";
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number;
            largestType = kind;
        }
    }
}
print(largest);
print(largestType);

// While loop
var n = 2;
while n < 100 {
    n = n * 2;
}
print(n);

var m = 2;
repeat {
    m = m * 2;
} while m < 100;
print(m);


// Loop with index
var total = 0;
for i in 0 ..< 4 {
    total += i;
}
print(total);






