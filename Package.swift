// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AbsintheSocketTransport",
    platforms: [.iOS(.v14), .macOS(.v10_14), .tvOS(.v12), .watchOS(.v5)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AbsintheSocketTransport",
            targets: ["AbsintheSocketTransport"]),
    ],
    dependencies: [
      .package(url: "https://github.com/davidstump/SwiftPhoenixClient.git", from: "5.3.1"),
      .package(name: "Apollo", url: "https://github.com/apollographql/apollo-ios.git", .upToNextMinor(from: "1.5.2")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "AbsintheSocketTransport",
            dependencies: ["Apollo", "SwiftPhoenixClient"]),
        .testTarget(
            name: "AbsintheSocketTransportTests",
            dependencies: ["AbsintheSocketTransport"]),
    ]
)
