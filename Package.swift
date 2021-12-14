// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "NMapsMap",
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
            url: "https://github.com/jaemyeong/NMapsMap-SPM/releases/download/3.14.0/NMapsMap.xcframework.zip",
            checksum: "0f552f630bab0d144ea30621f1f3b4265441c2a2abd2d595b063fcd2b04d5c31"
        )
    ]
)
