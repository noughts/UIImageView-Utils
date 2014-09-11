Pod::Spec.new do |s|
  s.name         = "UIImageView+Utils"
  s.version      = "0.1.0"
  s.summary      = "UIImageView+Utils"
  s.homepage     = "https://github.com/noughts/UIImageView+Utils"
  s.author       = { "noughts" => "noughts@gmail.com" }
  s.source       = { :git => "https://github.com/noughts/UIImageView+Utils.git" }
  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.platform = :ios
  s.requires_arc = true
  s.source_files = 'UIImageView+Utils/**/*.{h,m}'
end
