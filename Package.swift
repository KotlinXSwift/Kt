// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Kt",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "KtFoundation", targets: ["KtFoundation"]),
        .library(name: "KtLifecycle", targets: ["KtLifecycle"]),
        .library(name: "KtWidget", targets: ["KtWidget"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "KtFoundation"
        ),
        .target(
            name: "KtLifecycle",
            dependencies: ["KtFoundation"]
        ),
        .target(
            name: "KtWidget",
            dependencies: ["KtFoundation"]
        ),
        .testTarget(
            name: "KtTests",
            dependencies: ["KtFoundation", "KtLifecycle", "KtWidget"]
        ),
    ]
)
