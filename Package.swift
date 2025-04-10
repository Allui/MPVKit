// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "MPVKit",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(
            name: "MPVKit",
            targets: ["_MPVKit"]
        ),
        .library(
            name: "MPVKit-GPL",
            targets: ["_MPVKit-GPL"]
        ),
    ],
    targets: [
        .target(
            name: "_MPVKit",
            dependencies: [
                "Libmpv", "_FFmpeg", "Libuchardet", "Libbluray",
                .target(name: "Libluajit", condition: .when(platforms: [.macOS])),
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
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "gmp", "nettle", "hogweed", "gnutls", "Libdav1d"
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
        .target(
            name: "_MPVKit-GPL",
            dependencies: [
                "Libmpv-GPL", "_FFmpeg-GPL", "Libuchardet", "Libbluray",
                .target(name: "Libluajit", condition: .when(platforms: [.macOS])),
            ],
            path: "Sources/_MPVKit-GPL",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreAudio"),
            ]
        ),
        .target(
            name: "_FFmpeg-GPL",
            dependencies: [
                "Libavcodec-GPL", "Libavdevice-GPL", "Libavfilter-GPL", "Libavformat-GPL", "Libavutil-GPL", "Libswresample-GPL", "Libswscale-GPL",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "Libsmbclient", "gmp", "nettle", "hogweed", "gnutls", "Libdav1d"
            ],
            path: "Sources/_FFmpeg-GPL",
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

        .binaryTarget(
            name: "Libmpv-GPL",
            url: "https://github.com/Allui/MPVKit/releases/download/0.40.0/Libmpv-GPL.xcframework.zip",
            checksum: "a9a9410ff9cf74da5a3a4e8dc80677158976d28f86170c2ac741c7b16cd099ad"
        ),
        .binaryTarget(
            name: "Libavcodec-GPL",
            url: "https://github.com/Allui/MPVKit/releases/download/0.40.0/Libavcodec-GPL.xcframework.zip",
            checksum: "470924f10c7d33675bc83b5ae38faf18e2055d3b664a8295596b2c74078be3f1"
        ),
        .binaryTarget(
            name: "Libavdevice-GPL",
            url: "https://github.com/Allui/MPVKit/releases/download/0.40.0/Libavdevice-GPL.xcframework.zip",
            checksum: "025065cdfafae8447366baa0723e2597097b90c500ea8941ab1692acbb33c2d3"
        ),
        .binaryTarget(
            name: "Libavformat-GPL",
            url: "https://github.com/Allui/MPVKit/releases/download/0.40.0/Libavformat-GPL.xcframework.zip",
            checksum: "d47c037c986fc4aa636594e3f2d7b319f64db8a042aa227af5170f683961c198"
        ),
        .binaryTarget(
            name: "Libavfilter-GPL",
            url: "https://github.com/Allui/MPVKit/releases/download/0.40.0/Libavfilter-GPL.xcframework.zip",
            checksum: "3b88c841454dc3a79d1f87b6d161f90edad97d06fb02062bb652e145b6038141"
        ),
        .binaryTarget(
            name: "Libavutil-GPL",
            url: "https://github.com/Allui/MPVKit/releases/download/0.40.0/Libavutil-GPL.xcframework.zip",
            checksum: "723c60f3ac449eb1b1d20af3c622fb36bb956731bb8163a8394a6cb53eca56e0"
        ),
        .binaryTarget(
            name: "Libswresample-GPL",
            url: "https://github.com/Allui/MPVKit/releases/download/0.40.0/Libswresample-GPL.xcframework.zip",
            checksum: "1159c41f40547b85f71d8028bff0df360487764e9a517026ffaa820b961bcb16"
        ),
        .binaryTarget(
            name: "Libswscale-GPL",
            url: "https://github.com/Allui/MPVKit/releases/download/0.40.0/Libswscale-GPL.xcframework.zip",
            checksum: "a0a01be533323bc3a8bd1e5cdd0a43edb11f6e03d2524bd6dcec3c3c71c09c88"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libcrypto",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.2.0/Libcrypto.xcframework.zip",
            checksum: "89989ea14f7297d98083eb8adfba9b389f5b4886cb54fb3d5b6e8b915b7adf1d"
        ),
        .binaryTarget(
            name: "Libssl",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.2.0/Libssl.xcframework.zip",
            checksum: "46ad8e8fa5a6efe7bd31c9b3c56b20c1bc29a581083588d86e941d261d7dbe98"
        ),

        .binaryTarget(
            name: "gmp",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/gmp.xcframework.zip",
            checksum: "defd5623e6786543588001b8f33026395960a561540738deb6df6996d39f957d"
        ),

        .binaryTarget(
            name: "nettle",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/nettle.xcframework.zip",
            checksum: "c3b8f506fa32bcb3f9bf65096b0556c4f5973f846ee964577d783edbe8e6969d"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/hogweed.xcframework.zip",
            checksum: "47a34e7877f7ebd9175f5645059030e553276faa9a21b91e29fb7463b94e8daf"
        ),

        .binaryTarget(
            name: "gnutls",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/gnutls.xcframework.zip",
            checksum: "5f5cf903a2d52157c29ad304260709f618ce086afea02061241982f8425a6fb0"
        ),

        .binaryTarget(
            name: "Libunibreak",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libunibreak.xcframework.zip",
            checksum: "430ed1a8ff1a230bd93b6868021cde2aafb23c8cb2d586525836cac47c4f310f"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfreetype.xcframework.zip",
            checksum: "300d2966c914e06f0211d8da0ea6208a345709b888e9cbbf1cdd94df26330359"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfribidi.xcframework.zip",
            checksum: "4a3122a2027f021937ed0fa07173dca7f2c1c4c4202b7caf8043fa80408c0953"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libharfbuzz.xcframework.zip",
            checksum: "f607773598caa72435d8b19ce6a9d54fa7f26cde126b6b66c0a3d2804f084c68"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libass.xcframework.zip",
            checksum: "af24cd1429069153f0ca5c650e0b374c27ae38283aca47cbbbc9edb3165b182e"
        ),

        .binaryTarget(
            name: "Libsmbclient",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/4.15.13/Libsmbclient.xcframework.zip",
            checksum: "589db9c241e6cc274f2825bee542add273febd0666ebd7ea8a402574ed76e9af"
        ),

        .binaryTarget(
            name: "Libbluray",
            url: "https://github.com/mpvkit/libbluray-build/releases/download/1.3.4/Libbluray.xcframework.zip",
            checksum: "68540747670e734e9b9063da3e5ccb139d34e8b40e1d5ec3177392603d93dfec"
        ),

        .binaryTarget(
            name: "Libdovi",
            url: "https://github.com/mpvkit/libdovi-build/releases/download/3.3.0/Libdovi.xcframework.zip",
            checksum: "ca4382ea4e17103fbcc979d0ddee69a6eb8967c0ab235cb786ffa96da5f512ed"
        ),

        .binaryTarget(
            name: "MoltenVK",
            url: "https://github.com/mpvkit/moltenvk-build/releases/download/1.2.9-fix/MoltenVK.xcframework.zip",
            checksum: "63836d61deceb5721ff0790dac651890e44ef770ab7b971fb83cc1b2524d1025"
        ),

        .binaryTarget(
            name: "Libshaderc_combined",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2024.2.0/Libshaderc_combined.xcframework.zip",
            checksum: "1ccd9fce68ea29af030dceb824716fc16d1f4dcdc0b912ba366d5cb91d7b1add"
        ),

        .binaryTarget(
            name: "lcms2",
            url: "https://github.com/mpvkit/libplacebo-build/releases/download/7.349.0/lcms2.xcframework.zip",
            checksum: "bd2c27366f8b7adfe7bf652a922599891c55b82f5c519bcc4eece1ccff57c889"
        ),

        .binaryTarget(
            name: "Libplacebo",
            url: "https://github.com/mpvkit/libplacebo-build/releases/download/7.349.0/Libplacebo.xcframework.zip",
            checksum: "f32d20351289a080cd7288742747cd927553fde8c217f63263b838083d07a01a"
        ),

        .binaryTarget(
            name: "Libdav1d",
            url: "https://github.com/mpvkit/libdav1d-build/releases/download/1.4.3/Libdav1d.xcframework.zip",
            checksum: "eccfe37da9418e350bc6c1566890fa5b9585fbb87b8ceb664de77800ef17fe04"
        ),

        .binaryTarget(
            name: "Libavcodec",
            url: "https://github.com/Allui/MPVKit/releases/download/0.40.0/Libavcodec.xcframework.zip",
            checksum: "52c685e8013f34a6a98f575b111a03614d1baeb4f42aa82030e388f3f9a0ecf9"
        ),
        .binaryTarget(
            name: "Libavdevice",
            url: "https://github.com/Allui/MPVKit/releases/download/0.40.0/Libavdevice.xcframework.zip",
            checksum: "7566800aef8b88fc0e51eabea7d12615155718a7ca3b461ee35ade895145d4cf"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/Allui/MPVKit/releases/download/0.40.0/Libavformat.xcframework.zip",
            checksum: "0c5440629bdebf455df91a6965bb79a74d00dcae320115b24a02eacab6c81e2d"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/Allui/MPVKit/releases/download/0.40.0/Libavfilter.xcframework.zip",
            checksum: "e39bcf18b0c9c7fd9c8652f94cb6c2c24ce6f81513c9f76bbebd29314af3d61e"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/Allui/MPVKit/releases/download/0.40.0/Libavutil.xcframework.zip",
            checksum: "6ae7a2dff0bb57360f743ee0672cc1bb217fce5dabab8a7dd275fc219c799121"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/Allui/MPVKit/releases/download/0.40.0/Libswresample.xcframework.zip",
            checksum: "4156f73cb850af78a241d348302b85487ff6e0d09d1dd6855bb062bac512714d"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/Allui/MPVKit/releases/download/0.40.0/Libswscale.xcframework.zip",
            checksum: "8dd4a1d7eb3fff4330473eb9622244af99213540faddca5dc8f093f610189a37"
        ),

        .binaryTarget(
            name: "Libuchardet",
            url: "https://github.com/mpvkit/libuchardet-build/releases/download/0.0.8/Libuchardet.xcframework.zip",
            checksum: "80b14d8080c2531ced6d6b234a826c13f0be459a8c751815f68e0eefd34afa30"
        ),

        .binaryTarget(
            name: "Libluajit",
            url: "https://github.com/mpvkit/libluajit-build/releases/download/2.1.0/Libluajit.xcframework.zip",
            checksum: "3765d7c6392b4f9a945b334ed593747b8adb9345078717ecfb6d7d12114a0f9e"
        ),

        .binaryTarget(
            name: "Libmpv",
            url: "https://github.com/Allui/MPVKit/releases/download/0.40.0/Libmpv.xcframework.zip",
            checksum: "9c4941f5076a599f18ec564e252dc8ef5eaf73445ebb17955cf5667685b0bac0"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
