Pod::Spec.new do |s|
  # yangsugar 的名字要去 xxxx.podspec 名字一样
  s.name             = "maliang"
  s.version          = "0.0.1"
  s.summary          = "直播"
  s.description      = <<-DESC
                       直播模块顾问平台。
                       DESC
  s.homepage         = "https://github.com/YangSugar"
  s.license          = 'MIT'
  s.author           = { "YangSugar" => "yangfutang@91guoxin.com" }
  s.platform         = :ios, '8.0'
  # 这里的地址要放各自模块的git地址
  s.source           = {:git => "https://github.com/mlpingchangxin/MLPrivateCocoaPods.git", :tag => s.version}
  s.requires_arc     = true
  s.frameworks       = 'UIKit','Foundation' 

  # dependency 指的是你的模块或者 依赖某个第三方 
  #s.dependency 'AFNetworking', '~> 2.3'
  #s.dependency 'YYCache'

# UIView 和 EasyLog 在工程中以子目录显示
# 有多少个文件夹就建立多少个下边的描述
# ‘UIView111’ 指的是  文件夹的名字

  s.subspec 'UIView111' do |ss|
    #这个路径 yangsugar 自己建立的文件夹 跟 xxxx.podpec 同级
    ss.source_files = 'maliang/UIView/*.{h,m}'
  end

  s.subspec 'EasyLog' do |ss|
    ss.source_files = 'maliang/EasyLog/*.{h,m}'
  end
  
end