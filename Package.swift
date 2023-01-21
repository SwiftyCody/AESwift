// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AESwift",
    products: [
        .library(
            name: "AESwift",
            targets: ["AESwift"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "AESwift",
            dependencies: []),
        .testTarget(
            name: "AESwiftTests",
            dependencies: ["AESwift"]),
    ]
)
