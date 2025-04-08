// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RetroKit",
    platforms: [
        .macOS(.v14),
        .iOS(.v17)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "RetroKit",
            type: .dynamic,
            targets: ["RetroKit"]
        ),
        .executable(
            name: "Retro", 
            targets: ["Retro"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
        .package(url: "https://github.com/KevinVitale/SwiftSDL.git", from: "0.2.0-alpha.26")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "RetroKit",
            path: "Sources/RetroKit"),
        .executableTarget(
            name: "Retro",
            dependencies: [
                .product(name: "SwiftSDL", package: "swiftsdl")],
            path: "Sources/Retro"),
    ]
)
