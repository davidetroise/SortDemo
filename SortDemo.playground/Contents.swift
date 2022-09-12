let numbers = [7, 3, 6, 2, 9]

let sorted =  numbers.sorted()
let sorted2 = numbers.sorted { lhs, rhs in
    lhs > rhs
}
let sorted3 = numbers.sorted(by: >)

let words = ["hello", "world", "how", "are", "you"]
let sorted4 = words.sorted()
let sorted5 = words.sorted(by: >)

struct Person : Comparable {
    static func < (lhs: Person, rhs: Person) -> Bool {
        lhs.lastName == rhs.lastName ?
        lhs.firstName < rhs.firstName :
        lhs.lastName < rhs.lastName
    }
    
    let firstName: String
    let lastName: String
}

let people = [
    Person(firstName: "Giuseppe", lastName: "Verdi"),
    Person(firstName: "Mario", lastName: "Rossi"),
    Person(firstName: "Giacomo", lastName: "Rossi")
]

let sorted6 = people.sorted()
