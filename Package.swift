// swift-tools-version:5.6
import PackageDescription

let packageName = "AzureCommunicationCalling"
let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Azure/SwiftPM-AzureCommunicationCommon", exact: Version("1.1.1"))
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: "https://github.com/Azure/Communication/releases/download/v2.6.1/AzureCommunicationCalling-2.6.1.zip",
            checksum: "a5af303a56f6349bc8f0c56e03d18ddcae3d607d6eb9ad7a42b0b90bdb631803"
        )
    ],
    swiftLanguageVersions: [.v5]
)
