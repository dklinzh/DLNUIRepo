#
#  Be sure to run `pod spec lint DLNFoundation.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "DLNUIRepo"
  s.version      = "0.4.9"
  s.summary      = "A repository of some UI framworks for iOS development."
  s.description  = <<-DESC
                   A repository of some UI framworks for iOS development.
                   DESC
  s.homepage     = "http://git.jzg01.com/dlnframework/dlnuirepo"
  s.license      = "MIT"
  s.author       = { "Daniel Lin" => "linzhdk@gmail.com" }
  s.platform   = :ios, "7.0"
  s.source       = { :git => "http://git.jzg01.com/dlnframework/dlnuirepo.git", :tag => s.version }
  s.source_files  = "DLNUIRepo/**/*.{h,m}"
  s.resources = "DLNUIRepo/**/*.lproj"
  s.requires_arc = true
  s.dependency "DLNFoundation"
  s.dependency "WebViewJavascriptBridge", "5.0.5"
  s.dependency "KINWebBrowser", "1.3.2"
  s.dependency "CRToast", "0.0.9"
  s.dependency "KVNProgress", "2.2.4"
  s.dependency "MBProgressHUD", "0.9.2"
  s.dependency "WZLBadge", "1.2.4"
  s.dependency "Masonry", "1.0.1"
  s.dependency "ChameleonFramework", "2.0.4"
  s.dependency "SDWebImage", "3.8.1"
  s.prefix_header_file = 'DLNUIRepo/DLNUIRepo-Prefix.pch'
end
