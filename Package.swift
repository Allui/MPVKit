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
            checksum: "3b863ea82248936d5eee18ff7a580ffb07c8db8674942952c4a2d4f53c1caf3a"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libfreetype.xcframework.zip",
            checksum: "b5c91947d123b4abf375bddb4a30a9d0879ae40970da7f0fa4cdde371aecbddc"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libfribidi.xcframework.zip",
            checksum: "e520118e417676fc833d22cf9425861dbe1997bfb71fdd7ca28db46e48f696e9"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libharfbuzz.xcframework.zip",
            checksum: "647163ec299c99e33ff654ee553b1a5d2f944f0e3674b70cae08907f1bd6960c"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libass.xcframework.zip",
            checksum: "758b8e3a59ace5a14d46f2f66b07fa113b516140be1a59c6a255e3fffc4fe826"
        ),

        .binaryTarget(
            name: "Libdovi",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libdovi.xcframework.zip",
            checksum: "7a4aa107f1bcf514e50a53e41a45c29ba77814b10345d14c6ae97f35d9029cde"
        ),

        .binaryTarget(
            name: "Libplacebo",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libplacebo.xcframework.zip",
            checksum: "35de281c6ef14e40a5303d3b22cd8fedf1a3b62ad1e2fa27d97673faffd9b4cb"
        ),

        .binaryTarget(
            name: "Libdav1d",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libdav1d.xcframework.zip",
            checksum: "ad290294ebac1d538bf86387f47204ab0016dde0be272d09692f10c62f0521d0"
        ),

        .binaryTarget(
            name: "Libavcodec",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libavcodec.xcframework.zip",
            checksum: "dab66fce8c4aab250c66deb6daaae760d44e0c10519a51f15e7e7c2d1a569b3c"
        ),
        .binaryTarget(
            name: "Libavdevice",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libavdevice.xcframework.zip",
            checksum: "0d222326747689f38d9b4af405c5183d1dcd98e5fbbfaa762763f6613716c69b"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libavformat.xcframework.zip",
            checksum: "f60543464850e30f38c95c08c8490bc0364ebb72ef81341a939f4e68db64f406"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libavfilter.xcframework.zip",
            checksum: "2e6decac66ddd52b884686aa7687bbfd55dd8e502afa5770109fe66ac6f2314c"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libavutil.xcframework.zip",
            checksum: "e4fcc899da8987fa4f8bc7b184ca9dd546a6b8bd8aa5e089e25eebdc85e85c8a"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libswresample.xcframework.zip",
            checksum: "e5a80d3092cd7531809dfa5968a857ae3e01d92c723ec542d8442200a4f0b5a5"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libswscale.xcframework.zip",
            checksum: "26d1f643e69579ff81eee064480290a878bb70ffffdb538afa45dd0da74bafd2"
        ),

        .binaryTarget(
            name: "Libuchardet",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libuchardet.xcframework.zip",
            checksum: "014b1387607a9e3aa6c303cf09384d86d70de3a855c78f43eaedaefabc1741b5"
        ),

        .binaryTarget(
            name: "Libmpv",
            url: "https://github.com/Allui/MPVKit/releases/download/0.41.0/Libmpv.xcframework.zip",
            checksum: "84f0dfbe9c40a29087ca3219dba777735fb115435e936a2978bace1b467c8817"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
