// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "TILApp",
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
        .package(url: "https://github.com/vapor/fluent-postgresql.git", from: "1.0.0-rc"),
        .package(url: "https://github.com/vapor/leaf.git", from: "3.0.0-rc"),
        .package(url: "https://github.com/vapor/auth.git", from: "2.0.0-rc")
    ],
    targets: [
        .target(name: "App", dependencies: ["FluentPostgreSQL",
                                            "Vapor",
                                            "Leaf",
                                            "Authentication"]
        ),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"]),
    ]
)
