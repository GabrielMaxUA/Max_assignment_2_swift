import Cocoa

struct Location {
    var x: Int
    var y: Int
}

let firstStore = Location(x: 2, y: 6)
let secondStore = Location(x: 3, y: 3)
let range = 2.7

struct Customer {
    var name: String
    var email: String
    var location: Location // Use Location struct instead of tuple
    var phoneNumber: String // Corrected property name
    var acceptedNewsletter: Bool // Corrected property name
}

var authorsList: [Customer] = [
    Customer(name: "Taras Shevchenko", email: "customer1@yahoo.com", location: Location(x: 3, y: 7), phoneNumber: "103764598", acceptedNewsletter: true),
    Customer(name: "John Snow", email: "customer2@yahoo.com", location: Location(x: 4, y: 5), phoneNumber: "103764598", acceptedNewsletter: false),
    Customer(name: "Sersei Lanister", email: "customer3@yahoo.com", location: Location(x: 3, y: 9), phoneNumber: "103764598", acceptedNewsletter: true),
    Customer(name: "Sansa Stark", email: "customer4@yahoo.com", location: Location(x: 3, y: 3), phoneNumber: "103764598", acceptedNewsletter: true),
    Customer(name: "Arya Stark", email: "customer5@yahoo.com", location: Location(x: 1, y: 7), phoneNumber: "103764598", acceptedNewsletter: false),
    Customer(name: "The Ice King", email: "customer6@yahoo.com", location: Location(x: 2, y: 7), phoneNumber: "103764598", acceptedNewsletter: true),
    Customer(name: "Little Finger", email: "customer7@yahoo.com", location: Location(x: 5, y: 7), phoneNumber: "103764598", acceptedNewsletter: false),
    Customer(name: "Snoop Dog", email: "customer8@yahoo.com", location: Location(x: 3, y: 8), phoneNumber: "103764598", acceptedNewsletter: true),
    Customer(name: "Daineris Targarien", email: "customer9@yahoo.com", location: Location(x: 9, y: 1), phoneNumber: "103764598", acceptedNewsletter: true),
    Customer(name: "John Wick", email: "customer10@yahoo.com", location: Location(x: 7, y: 7), phoneNumber: "103764598", acceptedNewsletter: true)
]

func distance(
    from source: Location, // Change parameter type to Location
    to target: Location // Change parameter type to Location
) -> Double {
    let distanceX = Double(source.x - target.x)
    let distanceY = Double(source.y - target.y)
    return (distanceX * distanceX + distanceY * distanceY).squareRoot()
}

func WithinRange(storeLocation: Location, customers: [Customer], storeRange: Double) {
    print("Customers within range for store are:")
    for customer in customers {
        let customerLocation = customer.location
        if distance(from: customerLocation, to: storeLocation) < storeRange {
            print("Name: \(customer.name) Email:\(customer.email)")
        }
    }
}


WithinRange(storeLocation: firstStore, customers: authorsList, storeRange: range) // change the name of the store Variable if needed to check up on

