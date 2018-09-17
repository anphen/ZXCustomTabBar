

Pod::Spec.new do |s|
  
  s.name         = "ZXCustomTabBar"

  s.version      = "1.0.0"

  s.summary      = "一个自定义的Tabbar"
  
  s.platform     = :ios, "8.0"

  s.homepage     = "https://github.com/anphen/ZXCustomTabBar"

  s.license      = "MIT"

  s.author       = { "anphen" => "zxlx276@163.com" }

  s.source       = { :git => "https://github.com/anphen/ZXCustomTabBar.git", :tag => "#{s.version}" }

  s.source_files  =  "ZXCustomTabBar/*.{h,m}"

  s.dependency "Masonry", ">= 1.0.0"

  s.dependency "SDWebImage", ">= 4.0.0"
end
