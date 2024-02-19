// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftCommons",
    products: [
        .library(
            name: "SwiftCommons",
            targets: ["CommonValidation"]),
    ],
    targets: [
        .target(
            name: "CommonValidation",
            dependencies: [],
            path: "Sources/Validation/",
            exclude: ["Info.plist"]
         ),
        .testTarget(
            name: "CommonValidationTests",
            dependencies: ["CommonValidation"],
            path: "Tests/Validation/",
            exclude: ["Info.plist"]
        ),
    ]
)
