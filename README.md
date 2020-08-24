# Docker image with Android and Flutter

A docker image that features [Android Build Tools](https://developer.android.com/studio), [Android SDK](https://developer.android.com/studio), and [Flutter](https://flutter.dev/). The image is based on [`cirrusci/android-sdk`](https://hub.docker.com/r/cirrusci/android-sdk).

## Configuration

You can specify the version of Android SDK with the build argument `ANDROID_VERSION` (default: `29`) and the version of Flutter with the build argument `FLUTTER_VERSION` (default: `1.20.2`). For example, to run with Android SDK 29 and Flutter 1.22.0-1.0.pre, issue:

```bash
docker build --build-arg ANDROID_VERSION=29 --build-arg FLUTTER_VERSION=1.22.0-1.0.pre .
```
