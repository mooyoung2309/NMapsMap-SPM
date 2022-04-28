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
            url: "https://github.com/jaemyeong/NMapsMap-SPM/releases/download/3.15.0/NMapsMap.xcframework.zip",
            checksum: "ceef4e430a1a3c7d99c4c7da7be7cd1b5b8fa75cb0f5d5935da5685f3b5d39c9"
        )
    ]
)
