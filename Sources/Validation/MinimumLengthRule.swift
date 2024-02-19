//
// Created by Rahim Rahimli on 2/16/24.
//

import Foundation

public struct MinimumLengthRule: StringValidationRule {
    public let minLength: Int
    public var errorMessage: String { "Minimum length of \(minLength) is not satisfied" }
    public init(minLength: Int) {
        self.minLength = minLength
    }
    public func validate(value: String) -> Bool {
        return value.count >= minLength
    }
}
