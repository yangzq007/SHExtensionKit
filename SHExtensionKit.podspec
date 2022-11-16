#
# Be sure to run `pod lib lint SHExtensionKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SHExtensionKit'
  s.version          = '0.1.1'
  s.summary          = 'UI、布局、基础类的扩展'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  扩展部分UI布局，帮助我们更快速的构建UI
  扩展部分基础类，帮助我们快速的完成某些逻辑
                       DESC

  s.homepage         = 'https://github.com/yangzq007/SHExtensionKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yangzq007' => 'yangzq007@126.com' }
  s.source           = { :git => 'https://github.com/yangzq007/SHExtensionKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'SHExtensionKit/Classes/**/*'
  
  s.pod_target_xcconfig = { 'GENERATE_INFOPLIST_FILE' => 'YES' }
  s.user_target_xcconfig = { 'GENERATE_INFOPLIST_FILE' => 'YES' }
  
  # s.resource_bundles = {
  #   'SHExtensionKit' => ['SHExtensionKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
