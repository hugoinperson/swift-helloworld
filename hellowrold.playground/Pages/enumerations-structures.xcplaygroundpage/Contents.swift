import Foundation


// The values defined in an enumeration are its enumeration cases. 
// You use the case keyword `case` to introduce new enumeration cases.
enum CompassPoint {
    case north
    case south
    case east
    case west
}


//Multiple cases can appear on a single line, separated by commas:
enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}


// The type of directionToHead is inferred when it is 
// initialized with one of the possible values of CompassPoint.
// Once directionToHead is declared as a CompassPoint,
// you can set it to a different CompassPoint value using a shorter dot syntax:
var directionToHead = CompassPoint.west;
directionToHead = .east;



enum Rank: Int {
    case ace = 1;
    case two, three, four, five, six, seven, eight, nine, ten;
    case jack, queen, king;
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace";
        case .jack:
            return "jack";
        case .queen:
            return "queen";
        case .king:
            return "king";
        default:
            return String(self.rawValue)
        }
    }
    
    func isBiggerThan(rank: Rank) -> Bool {
        return self.rawValue > rank.rawValue ? true : false;
    }
}

let ace = Rank.ace;
let aceRawValue = ace.rawValue;
let description = ace.simpleDescription();
let comparision = ace.isBiggerThan(rank: Rank.six);


// use initializer with rawValue
if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}



// enumeration without raw values
enum Suit: Int {
    case spades = 1, hearts, diamonds, clubs;
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades";
        case .hearts:
            return "hearts";
        case .diamonds:
            return "diamonds";
        case .clubs:
            return "clubs";
        }
    }
    func color() -> String {
        switch self {
        case .spades, .clubs:
            return "black";
        case .hearts, .diamonds:
            return "red";
        }
    }
}
let hearts = Suit.hearts;
let heartsDescription = hearts.simpleDescription();
let heartsColor = hearts.color();



// raw values associate with enumeration cases
enum ServerResponse {
    case result(String, String);
    case failure(String);
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")

switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure...  \(message)")
}


// Strucutre
struct Card {
    var rank: Rank;
    var suit: Suit;
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    static func createDeck() -> [Card] {
        var deck = [Card]();
        var suitCount = 1;
        while let suit = Suit(rawValue: suitCount) {
            var rankCount = 1;
            while let rank = Rank(rawValue: rankCount) {
                deck.append(Card(rank: rank, suit: suit));
                rankCount += 1;
            }
            suitCount += 1;
        }
        return deck;
    }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

let deck = Card.createDeck();


