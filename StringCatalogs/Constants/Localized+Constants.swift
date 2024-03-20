//
//  Localized+Constants.swift
//  StringCatalogs
//
//  Created by Pedro Ésli Vieira do Nascimento on 20/03/24.
//

import Foundation

enum Localized {
    enum Example1 {
        static let title = String(localized: "example1.title", comment: "The title of example 1 view")
        static let body = String(localized: "example1.body", comment: "The body of example 1 view")
    }
    enum Example2 {
        enum Text {
            static let bird = String(localized: "example2.text.bird")
            static let backyard = String(localized: "example2.text.backyard")
            static func birdInBackyard(_ bird: Int, _ backyard: Int) -> String {
                String(localized: "example2.text.birdInBackyard\(bird)\(backyard)", comment: "The number of birds in a backyard")
            }
        }
        enum Button {
            static let increase = String(localized: "example2.button.increase", comment: "To increase the bird count")
            static let decrease = String(localized: "example2.button.decrease", comment: "To decrease the bird count")
        }
    }
    enum Example3 {
        enum TextField {
            static let name = String(localized: "example3.textfield.name", comment: "The name of the user")
        }
        enum Text {
            static func message(to name: String) -> String {
                String(localized: "example3.text.message\(name)", comment: "A message to the user")
            }
        }
    }
}

extension Localized {
    private static func localize(_ key: String.LocalizationValue, comment: StaticString? = nil) -> String {
        return String(localized: key, comment: comment)
    }
}
