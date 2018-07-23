#
# Be sure to run `pod lib lint LinkqPriCocoaPod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LinkqPriCocoaPod'
  s.version          = '1.0.3'
  s.summary          = 'A test of LinkqPriCocoaPod.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
              TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://gitee.com/RadioHeadache/LinkqPriCocoaPod'
  
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'rooster2578@gmail.com' => 'rooster2578@gmail.com' }
  s.source           = { :git => 'https://gitee.com/RadioHeadache/LinkqPriCocoaPod.git', :tag => '1.0.3' }
  # s.social_media_url = 'https://twitter.com/IntoSocket'

  s.ios.deployment_target = '8.0'

  s.source_files = 'LinkqPriCocoaPod/Classes/*.{h,m}'
  
   s.resource_bundles = {
     'LinkqPriCocoaPod' => ['LinkqPriCocoaPod/Assets/{*.png,*.jpg,*.xib}']
    }

   s.public_header_files = 'LinkqPriCocoaPod/Classes/**/*.h'
   s.frameworks = 'MobileCoreServices', 'CFNetwork', 'CoreGraphics'
   s.dependency 'AFNetworking'
end
