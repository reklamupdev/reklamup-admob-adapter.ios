Pod::Spec.new do |s|
  s.name             = 'ReklamupAdmobAdapter'
  s.version          = '1.1.0'
  s.summary          = 'Reklamup iOS adapter for Admob'

  s.description      = <<-DESC
Reklamup Admob Adapter allows to monetize your application with Admob.
                       DESC

  s.homepage         = 'https://github.com/reklamupdev/reklamup-admob-adapter.ios'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2023
														ReklamUP.
														LICENSE
														}
  s.author           = { 'ReklamUP' => 'dev@reklamup.com' }
  s.source           = { :git => 'https://github.com/reklamupdev/reklamup-admob-adapter.ios.git', :tag => s.version.to_s }

  s.platform 			= :ios 
  s.ios.deployment_target = '10.0'
  s.pod_target_xcconfig = { 
    "VALID_ARCHS": "arm64 armv7 x86_64",
    'VALID_ARCHS[sdk=iphoneos*]' => 'armv7 arm64',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64'
  }

  s.documentation_url = 'https://github.com/reklamupdev/reklamup-admob-adapter.ios'
  s.swift_versions = ['5']
  s.vendored_frameworks = 'ReklamupAdmobAdapter/ReklamupAdmobAdapter.xcframework'
  s.dependency 'Google-Mobile-Ads-SDK'
  s.frameworks = 'UIKit'
end
