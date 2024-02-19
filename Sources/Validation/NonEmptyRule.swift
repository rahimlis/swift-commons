//
// Created by Rahim Rahimli on 2/16/24.
//

import Foundation

public struct NonEmptyRule: StringValidationRule {
    public var errorMessage: String {
        return "Value cannot be empty"
    }
    public init(){}
    public func validate(value: String) -> Bool {
        return !value.isEmpty
    }
}
