// swift-tools-version:5.5

import PackageDescription

// Swift Package Manager — Package
// @link https://github.com/apple/swift-package-manager/blob/main/Documentation/PackageDescription.md

let package = Package(
    name: "SwiftyRSA",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_12),
        .tvOS(.v12),
        .watchOS(.v3),
    ],
    products: [
        .library(name: "SwiftyRSA", targets: ["SwiftyRSA"]),
    ],
    targets: [
        .target(
            name: "SwiftyRSA",
            path: "Source",
            exclude: [
                "Info-tvOS.plist",
                "Info.plist",
                "SwiftyRSA.h",
            ],
            linkerSettings: [
                .linkedFramework("Security"),
            ]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
