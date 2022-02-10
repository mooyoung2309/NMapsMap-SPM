// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "NMapsMap",
    defaultLocalization: "ko",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "NMapsMap",
            targets: [
                "NMapsMap"
            ]
        )
    ],
    targets: [
        .binaryTarget(
            name: "NMapsMap",
            url: "https://github.com/jaemyeong/NMapsMap-SPM/releases/download/3.14.1/NMapsMap.xcframework.zip",
            checksum: "400bf1dcacdfa9ac3c41dac7e60e05b149903ca9cc0195a4e7a3dc100472680c"
        )
    ]
)
