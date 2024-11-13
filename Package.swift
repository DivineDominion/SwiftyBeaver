// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "SwiftyBeaver",
    platforms: [
        .macOS(.v10_13),
    ],
    products: [
        .library(name: "SwiftyBeaver", targets: ["SwiftyBeaver"])
    ],
    targets:[
        .target(name: "SwiftyBeaver", dependencies: [], path: "Sources"),
        .testTarget(name: "SwiftyBeaverTests", dependencies: ["SwiftyBeaver"])
    ]
)
