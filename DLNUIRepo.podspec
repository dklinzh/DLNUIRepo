#
#  Be sure to run `pod spec lint DLNFoundation.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "DLNUIRepo"
  s.version      = "0.5.2"
  s.summary      = "A repository of some UI framworks for iOS development."
  s.description  = <<-DESC
                   A repository of some UI framworks for iOS development.
                   DESC
  s.homepage     = "http://git.jzg01.com/pods/DLNUIRepo"
  s.license      = "MIT"
  s.author       = { "Daniel Lin" => "linzhdk@gmail.com" }
  s.ios.deployment_target = '7.0'
  s.source       = { :git => "http://git.jzg01.com/pods/DLNUIRepo.git", :tag => s.version.to_s }
  s.source_files  = "DLNUIRepo/**/*.{h,m}"
  s.resources = "DLNUIRepo/**/*.lproj"
  s.requires_arc = true
  s.xcconfig = { "CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES" => "YES" }
  s.dependency "DLNFoundation"
  s.dependency "WebViewJavascriptBridge", "~> 5.0"
  s.dependency "KINWebBrowser", "~> 1.3"
  s.dependency "CRToast", "~> 0.0.9"
  s.dependency "KVNProgress", "~> 2.3"
  s.dependency "MBProgressHUD", "~> 1.0"
  s.dependency "WZLBadge", "~> 1.2"
  s.dependency "Masonry", "~> 1.0"
  s.dependency "ChameleonFramework", "~> 2.1"
  s.dependency "SDWebImage", "~> 3.8"
  s.prefix_header_file = 'DLNUIRepo/DLNUIRepo-Prefix.pch'
end
