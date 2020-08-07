// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Japx",
    platforms: [.macOS(.v10_12), .iOS(.v10)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Japx",
            targets: ["Japx"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.2.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Japx",
            dependencies: ["Alamofire"],
            path: "Sources"),
//        .testTarget(
//            name: "JapxTests",
//            dependencies: ["Japx"]),
    ],
    swiftLanguageVersions: [.v5]
)
