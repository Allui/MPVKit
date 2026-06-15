# MPVKit

[![mpv](https://img.shields.io/badge/mpv-v0.41.0-blue.svg)](https://github.com/mpv-player/mpv)
[![ffmpeg](https://img.shields.io/badge/ffmpeg-n8.1.1-blue.svg)](https://github.com/FFmpeg/FFmpeg)
[![license](https://img.shields.io/github/license/mpvkit/MPVKit)](https://github.com/mpvkit/MPVKit/main/LICENSE)

> MPVKit is only suitable for learning `libmpv` and will not be maintained too frequently.

`MPVKit` is a collection of tools to use `mpv` in `iOS`, `macOS`, `tvOS` applications.

It includes scripts to build `mpv` native libraries.

Forked from [kingslay/FFmpegKit](https://github.com/kingslay/FFmpegKit)

## About Metal support

Metal support only a patch version ([#7857](https://github.com/mpv-player/mpv/pull/7857)) and does not officially support it yet. Encountering any issues is not strange. 

## Installation

### Swift Package Manager

```
https://github.com/mpvkit/MPVKit.git
```

## How to build

```bash
make build
# specified platforms (ios,macos,tvos,tvsimulator,isimulator,maccatalyst)
make build platform=ios,macos
# clean all build temp files and cache
make clean
# see help
make help
```

## Make demo app using the local build version

If you want the demo app to use the local build version, you need to modify `Package.swift` to reference the local build xcframework file.

<details>
<summary>Click here for more information.</summary>

```
.binaryTarget(
    name: "Libmpv",
    path: "dist/release/Libmpv.xcframework.zip"
),
.binaryTarget(
    name: "Libavcodec",
    path: "dist/release/Libavcodec.xcframework.zip"
),
.binaryTarget(
    name: "Libavdevice",
    path: "dist/release/Libavdevice.xcframework.zip"
),
.binaryTarget(
    name: "Libavformat",
    path: "dist/release/Libavformat.xcframework.zip"
),
.binaryTarget(
    name: "Libavfilter",
    path: "dist/release/Libavfilter.xcframework.zip"
),
.binaryTarget(
    name: "Libavutil",
    path: "dist/release/Libavutil.xcframework.zip"
),
.binaryTarget(
    name: "Libswresample",
    path: "dist/release/Libswresample.xcframework.zip"
),
.binaryTarget(
    name: "Libswscale",
    path: "dist/release/Libswscale.xcframework.zip"
),
.binaryTarget(
    name: "Libplacebo",
    path: "dist/release/Libplacebo.xcframework.zip"
),
```

</details>

## Run default mpv player

```bash
./mpv.sh --input-commands='script-message display-stats-toggle' [url]
./mpv.sh --list-options
```

> Use <kbd>Shift</kbd>+<kbd>i</kbd> to show stats overlay

## Related Projects

* [libplacebo-build](https://github.com/mpvkit/libplacebo-build)
* [libdovi-build](https://github.com/mpvkit/libdovi-build)
* [libass-build](https://github.com/mpvkit/libass-build)

## Donation

If you appreciate my current work, you can buy me a cup of coffee ☕️.

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/C0C410P7UN)

## License

`MPVKit` source and bundles (`frameworks`, `xcframeworks`) — which include `libmpv`, `FFmpeg`, and `libplacebo` — are licensed under the LGPL v3.0.
