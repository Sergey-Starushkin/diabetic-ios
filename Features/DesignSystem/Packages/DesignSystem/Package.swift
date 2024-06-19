// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DesignSystem",
    defaultLocalization: "en",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "DesignSystemImp", targets: ["DesignSystemImp"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "DesignSystemImp",
            dependencies: [
            ]
        )
    ]
)
