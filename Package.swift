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
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4/Libunibreak.xcframework.zip",
            checksum: "001087c0e927ae00f604422b539898b81eb77230ea7700597b70393cd51e946c"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4/Libfreetype.xcframework.zip",
            checksum: "f2840aba1ce35e51c0595557eee82c908dac8e32108ecc0661301c06061e051c"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4/Libfribidi.xcframework.zip",
            checksum: "4a55513792ef7a17893875f74cc84c56f3657e8768c07a7a96f563a11dc4b743"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4/Libharfbuzz.xcframework.zip",
            checksum: "91558d8497d9d97bc11eeef8b744d104315893bfee8f17483d8002e14565f84b"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4/Libass.xcframework.zip",
            checksum: "1e41f5a69c74f6c6407aab84a65ccd0b34e73fa44465f488f99bf22bd61b070d"
        ),

        .binaryTarget(
            name: "Libdovi",
            url: "https://github.com/mpvkit/libdovi-build/releases/download/3.3.2/Libdovi.xcframework.zip",
            checksum: "e693e239808350868e79c5448ef9f02e2716bc822dd8632a41a368a1eae5ca7d"
        ),

        .binaryTarget(
            name: "Libplacebo",
            url: "https://github.com/mpvkit/libplacebo-build/releases/download/7.360.1/Libplacebo.xcframework.zip",
            checksum: "2fa3d54cb81f302d6f11c7b2f509af30944381c3b11ee9d35096eb4637a6e2dd"
        ),

        .binaryTarget(
            name: "Libdav1d",
            url: "https://github.com/mpvkit/libdav1d-build/releases/download/1.5.2-xcode/Libdav1d.xcframework.zip",
            checksum: "8a8b78e23e28ecc213232805f3c1936141fc9befe113e87234f4f897f430a532"
        ),

        .binaryTarget(
            name: "Libavcodec",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libavcodec.xcframework.zip",
            checksum: "fda8527d4946270813ea39de2dca1230c5cd28fd8a46f64ac881bec9241d78f9"
        ),
        .binaryTarget(
            name: "Libavdevice",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libavdevice.xcframework.zip",
            checksum: "39341b1d2571ea8b36171b7d98c03bc60e7d00efd89add11b4c3fd57b9e445bf"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libavformat.xcframework.zip",
            checksum: "d1c0421dab44616651ffe6647ee3bd6e9c3421cd26b91197b0f710773e019ed3"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libavfilter.xcframework.zip",
            checksum: "e3912d2219fe3206119e2e268d2a0f49a17cb6c308e257dcb73dcec903c00ee9"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libavutil.xcframework.zip",
            checksum: "195c9f8121549f65ea0a5abe27357db8f616039fa2d1512318b9c942b479c4d0"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libswresample.xcframework.zip",
            checksum: "53a8dd5dac278d2c21d84bec051ad4779962bae0308f1700d24b2004c3e9ea6c"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libswscale.xcframework.zip",
            checksum: "9c6195a0ec7de1856d64a8f922a05770c9e5aacc3f40cd06e4fdc042dc02c71b"
        ),

        .binaryTarget(
            name: "Libuchardet",
            url: "https://github.com/mpvkit/libuchardet-build/releases/download/0.0.8-xcode/Libuchardet.xcframework.zip",
            checksum: "503202caa0dafb6996b2443f53408a713b49f6c2d4a26d7856fd6143513a50d7"
        ),

        .binaryTarget(
            name: "Libmpv",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libmpv.xcframework.zip",
            checksum: "bb27a73b53d623a0505f6bc5f02a00174555e08e21c96e089cef2951aef8bb66"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
