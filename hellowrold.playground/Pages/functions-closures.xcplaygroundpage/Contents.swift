import Foundation

// Fucntion declaration
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day).";
}
greet(person: "Bob", day: "Tuesday");

// Function argument labels
func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("John", on: "Wednesday");

// Fucntion returns tuple
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int, else: Int?) {
    var min = scores[0];
    var max = scores[0];
    var sum = 0;
    
    for score in scores {
        if score > max {
            max = score;
        } else if score < min {
            min = score;
        }
        sum += score;
    }
    
    return (min, max, sum, nil);
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9]);
print(statistics.sum);
print(statistics.2);
print(statistics.else ?? 32);

// Function takes a variable number of arguments
func sumOf(numbers: Int...) -> Int {
    var sum = 0;
    for number in numbers {
        sum += number;
    }
    return sum;
}
sumOf();
sumOf(numbers: 42, 597, 12, 10, 100);

// Nested functions
func returnFifteen() -> Int {
    var y = 10;
    func add() {
        y += 5;
    }
    add();
    return y;
}
returnFifteen();

// Functions are first-class type
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number;
    }
    return addOne;
}
var increment = makeIncrementer();
increment(7);

// Function can be an argument
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true;
        }
    }
    return false;
}
func lessThanTen(number: Int) -> Bool {
    return number < 10;
}
var numbers = [20, 19, 7, 12];
hasAnyMatches(list: numbers, condition: lessThanTen);

// A closure without a name
var haha = numbers.map({
    (number: Int) -> Int in
    let result = 3 * number;
    return result;
});

print(haha);

// More concise way to write closure
let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)


// When closure is the only argument, the parentheses can be omitted
let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)
