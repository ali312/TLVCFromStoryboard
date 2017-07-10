Pod::Spec.new do |s|
  s.name             = 'TLVCFromStoryboard'
  s.version          = '0.1.0'
  s.summary          = 'UIViewController extension that looks for a view controller in all available storyboards by class name.'

  s.description      = <<-DESC
UIViewController extension that searches for a view controller in all available storyboards by class name!
                       DESC

  s.homepage         = 'https://github.com/ali312/TLVCFromStoryboard'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ali312' => 'ali312@yandex.ru' }
  s.source           = { :git => 'https://github.com/ali312/TLVCFromStoryboard.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.3'
  s.source_files = 'ViewControllerExtension/UIViewController+Storyboard.swift', 'ViewControllerExtension/ViewControllerExtension-Bridging-Header.h', 'ViewControllerExtension/TLExceptionHandler.h', 'ViewControllerExtension/TLExceptionHandler.m'

end