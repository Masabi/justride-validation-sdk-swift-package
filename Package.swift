// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JustrideValidationSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "JustrideValidationSDK",
            targets: ["JustrideValidationSDKWrapper"]
        ),
    ],
    targets: [
        .target(
            name: "JustrideValidationSDKWrapper",
            dependencies: [
                .target(name: "JustrideValidationSDK"),
                .target(name: "mbedtls")
            ],
            path: "JustrideValidationSDKWrapper",
            linkerSettings: [
                .linkedLibrary("sqlite3")
            ]
        ),
        .binaryTarget(
            name: "JustrideValidationSDK",
            url: "https://artifactory2.masabi.com/artifactory/libs-release-local/com/masabi/validation/JustrideValidationSDK-ios/5.51.2/JustrideValidationSDK-ios-5.51.2.zip",
            checksum: "62f0c9e18a140ffabf9fa6a97dbba94c31b24f088a22919c9fed3c0567607f03"
        ),
        .binaryTarget(
            name: "mbedtls",
            url: "https://artifactory2.masabi.com/artifactory/libs-release-local/com/masabi/validation/mbedtls-ios/5.51.2/mbedtls-ios-5.51.2.zip",
            checksum: "ced4de9919ab88a0483c6349673914e4ad1810559c60f2a87f0d53c54787fed7"
        )

    ]
)
