## 2.1.0

> **Heads up — raised minimums.** The lowest supported Android version (`minSdk`) goes from 19 to 24, and Flutter 3.35 or newer is now required.
>
> * pub enforces the Flutter constraint, but it **does not check `minSdk`**. An app that depends on `^2.0.0` and still sets `minSdk` below 24 (for example 21 or 23) will resolve 2.1.0 and then fail its Android build (manifest merger: `minSdkVersion 21 cannot be smaller than version 24 declared in library`).
> * Fix: raise the app's `minSdk` to 24 or higher. `minSdk = flutter.minSdkVersion` already is 24 on Flutter 3.35+. Or pin `protocol_handler_plus_android: 2.0.1` in the app's `dependency_overrides` until it can move up.

* Migrate the Android build to the Kotlin DSL (`build.gradle.kts`, `settings.gradle.kts`), following the Flutter 3.47 plugin template.
* Bump `compileSdk` from 33 to 36, so apps no longer fail `checkReleaseAarMetadata` against AndroidX dependencies that need 34+.
* Bump `minSdk` from 19 to 24 and Java from 1.8 to 17, matching Flutter's defaults. Requires Flutter 3.35 or later.
* Set `namespace` unconditionally and drop the `package` attribute from `AndroidManifest.xml`, as AGP 8+ expects.
* Build against Android Gradle Plugin 9.4.1.
* Replace the stale `getPlatformVersion` unit test with tests for `getInitialUrl` and unknown methods.

## 2.0.1

* Republish alongside the `protocol_handler_plus_macos` build fix. No functional changes.

## 2.0.0

* **BREAKING**: Renamed the Java package from `dev.stan-at-work.plugins.protocol_handler_plus` to `dev.stan_at_work.plugins.protocol_handler_plus`, since hyphens are not valid in Java package names. This also updates the Gradle `group` and `namespace`, the `package` attribute in `AndroidManifest.xml` and the `pluginClass` package registered in pubspec.yaml.
* **BREAKING**: The method and event channel names changed to `dev.stan_at_work.plugins/protocol_handler_plus` and `dev.stan_at_work.plugins/protocol_handler_plus_event`.
* Move the plugin and test sources into the matching `dev/stan_at_work/plugins/protocol_handler_plus/` directory, so the source layout matches the declared package again.
* Bump `protocol_handler_plus_platform_interface` to `^2.0.0`.

## 1.0.2

* Update version and metadata of the repository

## 1.0.1

* Update README.md

## 1.0.0

* First release.