//
// Created by Rahim Rahimli on 2/16/24.
//

import Foundation

public struct ValidURLRule: StringValidationRule {
    public var errorMessage: String {
        return "Value must be a valid URL"
    }

    public func validate(value: String) -> Bool {
        guard let url = NSURL(string: value) else {
            return false
        }
        return url.scheme != nil && url.host != nil
    }
}
