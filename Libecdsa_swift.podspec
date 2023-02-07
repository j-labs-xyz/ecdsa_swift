#
#  Be sure to run `pod spec lint Libecdsa_swift.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name                = "Libecdsa_swift"
  s.version             = "0.0.1"
  s.summary             = "lightweight recombination client application for threshold ECDSA."
  s.homepage            = "https://github.com/j-labs-xyz/ecdsa_swift"
  s.license             = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "leven" => "leven@j-labs.xyz" }
  s.platform            = :ios, "11.0"
  s.swift_version = '5.5'
  s.source              = { :git => "https://github.com/j-labs-xyz/ecdsa_swift.git", :tag => s.version }
  s.source_files = 'Libecdsa_swift/*.{h,swift}','Libecdsa_swift/libecdsa/*.h'
  s.ios.vendored_library = 'Libecdsa_swift/libecdsa/libecdsa.a'
  s.preserve_paths = 'Libecdsa_swift/Libecdsa_swift.modulemap'
  s.module_map = "Libecdsa_swift/Libecdsa_swift.modulemap"
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
