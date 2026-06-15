// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "MPVKit",
    platforms: [.macOS(.v11), .iOS(.v13), .tvOS(.v14)],
    products: [
        .library(
            name: "MPVKit",
            targets: ["_MPVKit"]
        ),
    ],
    targets: [
        .target(
            name: "_MPVKit",
            dependencies: [
                "Libmpv", "_FFmpeg", "Libuchardet",
            ],
            path: "Sources/_MPVKit",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreAudio"),
            ]
        ),
        .target(
            name: "_FFmpeg",
            dependencies: [
                "Libavcodec", "Libavdevice", "Libavfilter", "Libavformat", "Libavutil", "Libswresample", "Libswscale",
                "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "Libplacebo", "Libdovi", "Libunibreak",
                "Libdav1d"
            ],
            path: "Sources/_FFmpeg",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("expat"),
                .linkedLibrary("resolv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),

        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libunibreak",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libunibreak.xcframework.zip",
            checksum: "ca57a6f8e6870dd17896aef7d3b27e8e7df5b731e4fffe314fbb4c89293280ff"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libfreetype.xcframework.zip",
            checksum: "40dc859ed271f05840963ba4a390dd5708c4474e83f37d199a74ae70e2e5363b"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libfribidi.xcframework.zip",
            checksum: "026f6690fa4876370db4f3a563d0197f4f30e347cdf47a9a4db6bfa31438f294"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libharfbuzz.xcframework.zip",
            checksum: "a983b069883cbea0f92205485a6acc403f739147a76c7862798ec6c489653c0a"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libass.xcframework.zip",
            checksum: "da685f470be380e08dbfdd43449806b9d31f8cd5f86aac1db59863eae4547afc"
        ),

        .binaryTarget(
            name: "Libdovi",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libdovi.xcframework.zip",
            checksum: "23d0e7b865a30e9341cd36923367a88d57f7ea5d7ea81a54ea809322cbf195e1"
        ),

        .binaryTarget(
            name: "Libplacebo",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libplacebo.xcframework.zip",
            checksum: "60b9383f9140a83c27ccedd29ae265a370e87a7279b13ac71effed56d8f3b0a2"
        ),

        .binaryTarget(
            name: "Libdav1d",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libdav1d.xcframework.zip",
            checksum: "9e72a730b900f7b5c5a01f187384988edcadbeb5f45efe31f07dc1fc23217996"
        ),

        .binaryTarget(
            name: "Libavcodec",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libavcodec.xcframework.zip",
            checksum: "ad281d5f999dce4d8f6661ef291fe5e3a13c50c29169277012babb1fc36b38ad"
        ),
        .binaryTarget(
            name: "Libavdevice",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libavdevice.xcframework.zip",
            checksum: "93b4cdff47d67cdc79fed8834ab0b55483f53c588ca2d4ae0c82283aeb6c0d4a"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libavformat.xcframework.zip",
            checksum: "8d2591697ec6f4f4368504834420ebfc2cd560cec866183567091fa1c801ffbc"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libavfilter.xcframework.zip",
            checksum: "dc94bb04d9c76196a5995dcbff6255a4dcec889db20c02a2267bdfb83ab8daa3"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libavutil.xcframework.zip",
            checksum: "4468f0bb53e130bd8e094e81fb7332dd69460eeecca885c227361a53db245014"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libswresample.xcframework.zip",
            checksum: "9a730d916ea59eb635a17076cda7db2ca133cc004025a7331bf0246b6c6cd19f"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libswscale.xcframework.zip",
            checksum: "faa4b61a9e4f1a109e37adbf79aa17af0ca6625f3397bc282600fdd46bc34b8f"
        ),

        .binaryTarget(
            name: "Libuchardet",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libuchardet.xcframework.zip",
            checksum: "2c144c92a35b82ffb3e9cd866cb1ae3045ca522d0d2f753d7e5a8808c6a03bc9"
        ),

        .binaryTarget(
            name: "Libmpv",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libmpv.xcframework.zip",
            checksum: "979345bfa776d393255d999abb9e75647f51cbf1165747e9cd3e4f0c6ecacda3"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
