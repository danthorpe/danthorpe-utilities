// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Utilities",
    platforms: [
        .macOS("10.15"),
        .iOS("13.0"),
        .tvOS("13.0"),
        .watchOS("6.0")
    ],
    products: [
        .library(name: "Concurrency", targets: ["Concurrency"]),
        .library(name: "Reachability", targets: ["ReachabilityLive"]),
        .library(name: "ReachabilityMocks", targets: ["ReachabilityMocks"]),
        .library(name: "Utilities", targets: ["Concurrency", "ReachabilityLive"]),
    ],
    dependencies: [ ],
    targets: [
        .target(name: "Concurrency", dependencies: []),
        .target(name: "Reachability", dependencies: []),
        .target(name: "ReachabilityLive", dependencies: ["Reachability"]),
        .target(name: "ReachabilityMocks", dependencies: ["Reachability"]),
        .testTarget(name: "ConcurrencyTests", dependencies: ["Concurrency"]),
    ]
)
