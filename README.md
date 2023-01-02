# ReklamUP Admob Adapter

[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/ReklamupAdmobAdapter.svg)](https://img.shields.io/cocoapods/v/ReklamupAdmobAdapter.svg)
[![Platform](https://img.shields.io/cocoapods/p/ReklamupAdmobAdapter.svg?style=flat)](https://github.com/reklamupdev/ReklamupAdmobAdapter)

Reklamup iOS adapter for Admob.

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)

## Features

- [x] Banner
- [x] Interstitial
- [x] Rewarded
- [x] Rewarded Interstitial

## Requirements

- iOS 10.0+
- Xcode 14.1+
- Swift 5.3+

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager. For usage and installation instructions, visit their website. To integrate ReklamupAdapterAdmob using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'ReklamupAdmobAdapter', '~> 1.0'
```

## Usage

### GDPR Compliance

If you are not using any Consent Management Platform to handle privacy issues and managing user consent with your own solution, you have to inform admob mediation and mediation partners about the consent. The following code snippet is sample for gdpr consent usage for admob mediation. If you already have the snippet like below you need to add all these extras bundles for the reklamup custom event adapter as well.

```swift
let request = GADRequest()
let extras = GADExtras()
extras.additionalParameters = ["npa": 1]
request.register(extras)
```

### Configure mediation settings for your AdMob ad unit

You need to add Reklamup placements provided by the Reklamup team to the mediation configuration as waterfall ad source for your ad unit.

![Waterfall Ad Source](https://github.com/reklamupdev/reklamup-admob-adapter.ios/raw/main/assets/waterfall_ad_source.png)

You can add each placement as **custom event**  as shown in the figure below.

![Custom Event](https://github.com/reklamupdev/reklamup-admob-adapter.ios/raw/main/assets/custom_event.png)

**Custom Event screen parameters**<br />
**Class Name** : ReklamupAdmobAdapter.RUPCustomEvent<br />
**Parameter** : Reklamup placement ids for each floor price provided by the reklamup team<br />

## FAQ

You can send email. [ReklamUP](mailto:dev@reklamup.com?subject=Reklamup%20Admob%20Adapter%20iOS)

## Credits

ReklamUP is owned and maintained by the [ReklamUP](http://reklamup.com).

## License

Copyright © 2023. All right reserved.
