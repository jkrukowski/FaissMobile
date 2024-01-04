// swift-tools-version: 5.9

import PackageDescription
 
let package = Package(
    name: "faiss-mobile",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "FAISS",
            targets: ["FAISS"]
        ),
        .library(
            name: "FAISS_C",
            targets: ["FAISS_C"]
        ),
        .library(
            name: "OpenMP",
            targets: ["OpenMP"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "FAISS",
            url: "https://github.com/DeveloperMindset-com/faiss-mobile/releases/download/v1.7.4/faiss.xcframework.zip",
            checksum: "85526c0384812d1b3c113dabb67ee779afe9b5225a9a57fbe936298a610b6f86"
        ),
        .binaryTarget(
            name: "FAISS_C",
            url: "https://github.com/DeveloperMindset-com/faiss-mobile/releases/download/v1.7.4/faiss_c.xcframework.zip",
            checksum: "581024fc0495a42acf5305d96bb29fc98b6a23a4005ac495b0706a929c41c5a9"
        ),
        .binaryTarget(
            name: "OpenMP",
            url: "https://github.com/DeveloperMindset-com/openmp-mobile/releases/download/v16.0.5/openmp.xcframework.zip",
            checksum: "958970064322013ff4fa92ecb0ba53cea4eb3fce41be29498eb645e531f4fe6d"
        )
    ]
)