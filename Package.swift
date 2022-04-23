// swift-tools-version:5.6

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
            url: "https://github.com/jaemyeong/NMapsMap-SPM/releases/download/3.14.2/NMapsMap.xcframework.zip",
            checksum: "ac07d8bd04c259448a50a6f951f1b442367436782ae0dfc6e8d5ec3b5208dbc0"
        )
    ]
)
