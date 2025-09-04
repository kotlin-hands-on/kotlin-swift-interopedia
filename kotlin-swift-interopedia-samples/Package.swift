// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://github.com/udiscapp/kotlin-swift-interopedia-samples/releases/download/1.0.0/shared.xcframework.zip"
let remoteKotlinChecksum = "replaceme"
let packageName = "shared"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
    ]
)