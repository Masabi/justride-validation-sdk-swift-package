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
            url: "https://val-artifactory.justride.com/artifactory/libs-release-local/com/masabi/validation/JustrideValidationSDK-ios/5.61.0/JustrideValidationSDK-ios-5.61.0.zip",
            checksum: "49d7af4828929a8429cd1c4e3dd3092b7950a53094c3a46397b6f6c8b598232b"
        ),
        .binaryTarget(
            name: "mbedtls",
            url: "https://val-artifactory.justride.com/artifactory/libs-release-local/com/masabi/validation/mbedtls-ios/5.61.0/mbedtls-ios-5.61.0.zip",
            checksum: "82ae16e47d931c75f3699b6ccc1b6fceed50f0010fb7752624d0ad3b4fbb94bc"
        )

    ]
)
