// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SDWebImageSVGKitPlugin",
    platforms: [
        .macOS(.v10_11), .iOS(.v9), .tvOS(.v9)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SDWebImageSVGKitPlugin",
            targets: ["SDWebImageSVGKitPlugin"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.10.0"),
        .package(url: "https://github.com/arturdev/SVGKit.git", branch: "3.x")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SDWebImageSVGKitPlugin",
            dependencies: ["SDWebImage", "SVGKit"],
            path: ".",
            sources: ["SDWebImageSVGKitPlugin/Classes"],
            publicHeadersPath: "SDWebImageSVGKitPlugin/Classes"
        )
    ]
)
