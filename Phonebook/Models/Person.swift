//
//  Person.swift
//  Phonebook
//
//  Created by Никита Рыжкин on 09.11.2021.
//
import Foundation

struct Person {
    let name: String
    let surName: String
    let phoneNumber: String
    let eMail: String
    var fullName: String {
        "\(name) \(surName)"
    }
}
var names = ["Ivan", "Stepan", "Fedor", "Sidor", "Petor",
             "Alex", "Jack", "John", "Nikita", "Stan"]
var surNames = ["Ivanov", "Stepanov", "Fedorov", "Sidorov","Petrov",
                "Alexson", "Jackson", "Johnson", "Nikitin", "Smith"]
var phoneNumbers = ["111-111", "222-222", "333-333", "444-444", "555-555",
                    "666-666", "777-777", "888-888", "999-999", "101-010"]
var eMails = ["1@mail.ru", "2@mail.ru", "3@mail.ru", "4@mail.ru", "5@mail.ru",
              "6@mail.ru", "7@mail.ru", "8@mail.ru", "9@mail.ru", "10@mail.ru"]

extension Person {
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        while names.count > 0 {
            persons.append(Person(name: names.remove(at: Int.random(in: 0...names.count - 1)),
                                  surName: surNames.remove(at: Int.random(in: 0...surNames.count - 1)),
                                  phoneNumber: phoneNumbers.remove(at: Int.random(in: 0...phoneNumbers.count - 1)),
                                  eMail: eMails.remove(at: Int.random(in: 0...eMails.count - 1))))
            
        }
        return persons
    }
}

