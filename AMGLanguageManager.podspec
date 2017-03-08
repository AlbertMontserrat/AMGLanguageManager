#
# Be sure to run `pod lib lint AMGLanguageManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AMGLanguageManager'
  s.version          = '1.0'
  s.summary          = 'Language manager that offers the possibility to change the language of the app during the execution.'
  s.description      = <<-DESC
Language manager acts as a Singleton and offers the possibility to change the language of the app during the execution and get localized string and resources.
                       DESC

  s.homepage         = 'https://github.com/AlbertMontserrat/AMGLanguageManager'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'albert.montserrat.gambus@gmail.com' => 'albert.montserrat.gambus@gmail.com' }
  s.source           = { :git => 'https://github.com/AlbertMontserrat/AMGLanguageManager.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'AMGLanguageManager/Classes/**/*'
end
