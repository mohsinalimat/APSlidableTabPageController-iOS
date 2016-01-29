Pod::Spec.new do |s|
  s.name             = "APSlidableTabPageController"
  s.summary          = "A slidable tab page controller written in Swift."
  s.version          = "1.0.1"
  s.homepage         = "https://github.com/apegroup/APSlidableTabPageController-iOS"
  s.license          = 'MIT'
  s.author           = { "apegroup AB" => "support@apegroup.com" }
  s.source           = { :git => "https://github.com/apegroup/APSlidableTabPageController-iOS.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/apegroup'
  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.source_files = 'APSlidableTabPageController/**/*'
  s.frameworks = 'UIKit', 'Foundation'
end
