// swift-tools-version:5.6
import PackageDescription

let packageName = "AzureCommunicationCalling"
let packageWrapperName = packageName + "-Wrapper"
let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageWrapperName]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Azure/SwiftPM-AzureCommunicationCommon", exact: Version("1.1.1"))
    ],
    targets: [
        .target(
            name: packageWrapperName,
            dependencies: [
                .product(name: "AzureCommunicationCommon", package: "SwiftPM-AzureCommunicationCommon"),
                .target(name: packageName)
            ],
            path: "Sources/WrapperDummy",
            publicHeadersPath: ""
        ),
        .binaryTarget(
            name: packageName,
            url: "https://github.com/Azure/Communication/releases/download/v2.5.1/AzureCommunicationCalling-2.5.1.zip",
            checksum: "78d7edb244ce4a31ba6fbb51e596d588747ce97a36ebe89cf953668c0b379758"
        )
    ],
    swiftLanguageVersions: [.v5]
)
