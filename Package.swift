// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PrepModels",
    platforms: [
       .macOS(.v12),
       .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PrepModels",
            targets: ["PrepModels"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
        .package(url: "https://github.com/vapor/fluent.git", from: "4.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "PrepModels",
            dependencies: [
                .product(name: "Fluent", package: "fluent"),
                .product(name: "Vapor", package: "vapor")
            ]),
        .testTarget(
            name: "PrepModelsTests",
            dependencies: ["PrepModels"]),
    ]
)
