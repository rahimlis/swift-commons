//
//  File.swift
//  
//
//  Created by Rahim Rahimli on 2/16/24.
//

import Foundation

public protocol ValidationRule {
    associatedtype T
    var errorMessage: String { get }
    func validate(value: T) -> Bool
}

public protocol StringValidationRule: ValidationRule where T == String { }
