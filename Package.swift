// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "libplacebo",
    platforms: [.macOS(.v12), .iOS(.v15), .tvOS(.v15)],
    products: [
        .library(
            name: "Libplacebo", 
            targets: ["_Libplacebo"]
        ),
    ],
    targets: [
        // Need a dummy target to embedded correctly.
        // https://github.com/apple/swift-package-manager/issues/6069
        .target(
            name: "_Libplacebo",
            dependencies: ["lcms2", "Libdovi", "MoltenVK", "Libshaderc_combined", "Libplacebo"],
            path: "Sources/_Dummy"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libplacebo",
            url: "https://github.com/aagedal/libplacebo-build/releases/download/7.387.0/Libplacebo.xcframework.zip",
            checksum: "d643739f1097107265b14f1964b9c8058e73bc360ced0660bdadce5f0e4d6433"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
