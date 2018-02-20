#
# Be sure to run `pod lib lint openfec-ios.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "openfec-ios"
  s.version          = "0.1.0"
  s.summary          = "openfec for ios"
  s.description      = <<-DESC
                       Forward Erasure Correction Library, build for iOS. See http://openfec.org for Library api 
                       DESC
  s.homepage         = "https://github.com/petester42/pjsip-ios.git"
  s.license          = 'MIT'
  s.author           = { "Aleksey Kurnosov" => "akthesnipe@gmail.com" }
  s.source           = { :git => "https://github.com/Kurnosov/openfec-ios.git", :tag => s.version.to_s }
  s.social_media_url = ''

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.public_header_files = 'bin/release/include/**'
  
  s.preserve_paths = 'bin/release/include/*{h,hpp}'
  
  s.vendored_libraries = 'bin/release/lib/*.a'

  s.header_mappings_dir = 'bin/release'

  s.xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => 'PJ_AUTOCONF=1',
    'HEADER_SEARCH_PATHS'  => '$(inherited) $(PODS_ROOT)/openfec-ios/include'
  }
end
