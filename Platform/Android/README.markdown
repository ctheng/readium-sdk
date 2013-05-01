## Building for Android

This library is all set up to compile as a shared library for Android. At present it targets android-9 and uses clang v3.2. There is no real JNI layer at present, and it has only been built on OS X. I assume that a working NDK on any platform will have success, though.

### Prerequisites

* Android NDK release 8e
* A lot of patience

### Compilation

1. From a Terminal, go into the Platform/Android subdirectory of the readium-sdk repository (this directory).
2. Run `ndk-compile.sh build|clean [<path-to-ndk>]` to build or clean your project.
   My invocation looks like this, for example:

   sh ndk-compile.sh build /Applications/Android-Dev-Tools/ndk

   You can also define an ANDROID_NDK env var to have a default for <path-to-ndk>, or simply add the ndk path to your PATH env var.

Everything else should be set up appropriately by that script.
