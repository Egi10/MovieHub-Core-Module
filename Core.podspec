Pod::Spec.new do |s|
  
  s.platform = :ios
  s.ios.deployment_target = '16.0'
  s.name = "Core"
  s.summary = "MovieHub Core.framework for modularization chapter"
  s.requires_arc = true
 
  s.version = "1.0.3"
 
  s.license = { :type => "MIT", :file => "LICENSE" }
 
  s.author = { "Egi10" => "egifcb@gmail.com" }
 
  s.homepage = "https://github.com/Egi10/MovieHub-Core-Module"
 
  s.source = { 
    :git => "https://github.com/Egi10/MovieHub-Core-Module", 
    :tag => s.version
  }
 
  s.framework = "UIKit"
 
  s.source_files = "Core/**/*.{swift}"
 
  #s.resources = "Core/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"
  s.dependency 'Alamofire'
  s.dependency 'RealmSwift', '~>10'
  s.dependency 'Swinject'
 
  s.swift_version = "5.5"

end
