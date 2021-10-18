// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Spawn",
    products: [
        .library(name: "Spawn", targets: ["Spawn"])
    ],
    targets: [
        .targets(name: "Spawn", dependencies: [])
    ]
)
