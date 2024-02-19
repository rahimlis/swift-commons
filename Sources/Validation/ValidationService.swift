//
//  File.swift
//
//
//  Created by Rahim Rahimli on 2/16/24.
//

import Foundation


public struct ValidationResult {
    public let isValid: Bool
    public let errorMessage: [String]
}

public class ValidationService {
    public init(){
        
    }
    
    public func validate(value: String, using rules: [any StringValidationRule]) -> ValidationResult {
        for rule in rules {
            if !rule.validate(value: value) {
                return ValidationResult(isValid: false, errorMessage: [rule.errorMessage])
            }
        }

        return ValidationResult(isValid: true, errorMessage: [])
    }

    public func validateAny<Rule: ValidationRule>(_ value: Rule.T, using rules: [Rule]) -> ValidationResult {
        var allErrors = [String]()
        for rule in rules {
            let result = rule.validate(value: value)
            if !result {
                allErrors.append(rule.errorMessage)
            }
        }

        return ValidationResult(isValid: allErrors.isEmpty, errorMessage: allErrors)
    }

}

public extension ValidationService {
    func isValid(url: String) -> ValidationResult {
        return self.validate(value: url, using: [NonEmptyRule(), ValidURLRule()])
    }
}
