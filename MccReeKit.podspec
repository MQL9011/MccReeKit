#
# Be sure to run `pod lib lint MccReeKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MccReeKit'
  s.version          = '0.1.6'
  s.summary          = 'MccReeKit集成了开发常用的扩展.'

                    #加入高性能画圆角

  s.description      = <<-DESC
MccReeKit集成了一些开发常用的扩展.
                       DESC

  s.homepage         = 'http://cocomccree.cn/'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MQL9011' => '301063915@qq.com' }
  s.source           = { :git => 'https://github.com/MQL9011/MccReeKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MccReeKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MccReeKit' => ['MccReeKit/Assets/*.png']
  # }

  s.public_header_files = 'MccReeKit/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'

end
