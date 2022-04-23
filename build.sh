#!/bin/sh

set -e

VERSION="release/3.14.2"

git clone --depth=1 --branch="${VERSION}" https://github.com/navermaps/NMapsMap.git

mkdir -p iphonesimulator

cp -R NMapsMap/framework/NMapsMap.framework iphonesimulator/

xcrun lipo -remove armv7 -remove arm64 iphonesimulator/NMapsMap.framework/NMapsMap -o iphonesimulator/NMapsMap.framework/NMapsMap

mkdir -p iphoneos

cp -R NMapsMap/framework/NMapsMap.framework iphoneos/

xcrun lipo -remove x86_64 -remove i386 iphoneos/NMapsMap.framework/NMapsMap -o iphoneos/NMapsMap.framework/NMapsMap

xcodebuild -create-xcframework \
-framework iphonesimulator/NMapsMap.framework \
-framework iphoneos/NMapsMap.framework \
-output NMapsMap.xcframework

rm -rf NMapsMap

rm -rf iphonesimulator

rm -rf iphoneos

zip -r NMapsMap.xcframework.zip NMapsMap.xcframework

rm -rf NMapsMap.xcframework

swift package compute-checksum NMapsMap.xcframework.zip
