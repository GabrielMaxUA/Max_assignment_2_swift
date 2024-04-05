import Cocoa

struct Location {
    var x: Int
    var y: Int
}

let firstStore = Location(x: 2, y: 6)
let secondStore = Location(x: 3, y: 3)
let range = 2.7

struct Customer {
    var firstName: String
    var email: String
    var location: Location // Use Location struct instead of tuple
    var phoneNumber: String // Corrected property name
    var acceptedNewsletter: Bool // Corrected property name
}

var authorsList: [Customer] = [
    Customer(firstName: "Taras", email: "customer1@yahoo.com", location: Location(x: 3, y: 7), phoneNumber: "103764598", acceptedNewsletter: true),
    Customer(firstName: "John", email: "customer2@yahoo.com", location: Location(x: 4, y: 5), phoneNumber: "103764598", acceptedNewsletter: false),
    Customer(firstName: "Sersei", email: "customer3@yahoo.com", location: Location(x: 3, y: 9), phoneNumber: "103764598", acceptedNewsletter: true),
    Customer(firstName: "Sansa", email: "customer4@yahoo.com", location: Location(x: 3, y: 3), phoneNumber: "103764598", acceptedNewsletter: true),
    Customer(firstName: "Arya", email: "customer5@yahoo.com", location: Location(x: 1, y: 7), phoneNumber: "103764598", acceptedNewsletter: false),
    Customer(firstName: "The", email: "customer6@yahoo.com", location: Location(x: 2, y: 7), phoneNumber: "103764598", acceptedNewsletter: true),
    Customer(firstName: "Little", email: "customer7@yahoo.com", location: Location(x: 5, y: 7), phoneNumber: "103764598", acceptedNewsletter: false),
    Customer(firstName: "Snoop", email: "customer8@yahoo.com", location: Location(x: 3, y: 8), phoneNumber: "103764598", acceptedNewsletter: true),
    Customer(firstName: "Ice", email: "customer9@yahoo.com", location: Location(x: 3, y: 1), phoneNumber: "103764598", acceptedNewsletter: true),
    Customer(firstName: "John", email: "customer10@yahoo.com", location: Location(x: 7, y: 7), phoneNumber: "103764598", acceptedNewsletter: true)
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
    print("Customers within range for store at location of \(firstStore.x), \(firstStore.y):")
    for customer in customers {
        let customerLocation = customer.location
        if distance(from: customerLocation, to: storeLocation) < storeRange {
            print("Name: \(customer.firstName) Email:\(customer.email)")
        }
    }
}


WithinRange(storeLocation: secondStore, customers: authorsList, storeRange: range) // change the name of the store Variable if needed to check up on

