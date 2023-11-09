// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "Livepeer",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Livepeer",
            targets: ["Livepeer"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Livepeer",
            dependencies: []
        )
  ]
)
