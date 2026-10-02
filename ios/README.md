# iOS app

The native wrapper uses `WKWebView` to run the same Canvas game offline from files bundled in the app. It supports iOS 15 and later on iPhone and iPad. The iPhone app launches in landscape, which gives the arena and twin-stick controls a usable play area.

## Build

`ios/prepare-web.sh` (macOS) or `ios/prepare-web.ps1` (Windows) copies the current root website files into the Xcode target's `Web` resource folder. The Xcode project is generated from `ios/OneRoom/project.yml` with XcodeGen. On a Mac with Xcode and XcodeGen installed:

```sh
bash ios/prepare-web.sh
xcodegen generate --spec ios/OneRoom/project.yml --project ios/OneRoom
xcodebuild -project ios/OneRoom/OneRoom.xcodeproj -scheme OneRoom -configuration Release -sdk iphoneos -destination 'generic/platform=iOS' -derivedDataPath build/DerivedData CODE_SIGNING_ALLOWED=NO build
```

The GitHub Actions workflow runs these steps on a macOS runner, uploads `OneRoom-unsigned.ipa` as a 30-day artifact, and publishes it at the GitHub Pages download page.

## Sign before installing

The generated IPA is unsigned and uses bundle identifier `com.lukayara.oneroom100monsters`. Signing requires a matching App ID and provisioning profile as well as a signing certificate. An ad hoc profile must include each device's registered UDID; a development profile also needs the appropriate developer certificate. App Store distribution uses a different signing/export route.

The app does not request network access and packages all runtime game files locally. It uses the system WebKit engine; audio begins after the first user interaction, as required by browser playback policies.
