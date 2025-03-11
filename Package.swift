// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "Connectivity",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12),
        .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "Connectivity",
            targets: ["Connectivity"]
        )
    ],
    targets: [
        .target(
            name: "Connectivity",
            dependencies: [],
            path: "Connectivity/Classes"
        )
    ]
)
