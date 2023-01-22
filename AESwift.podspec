Pod::Spec.new do |s|
  s.name             = 'AESwift'
  s.version          = '1.0.1'
  s.summary          = 'Data and NSData Extension made for AES encryption/decryption only with Swift.'
  s.homepage         = 'https://github.com/redxoul/AESwift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'redxoul' => 'soldolly@gmail.com' }
  s.source           = { :git => 'https://github.com/redxoul/AESwift.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'

  s.source_files = 'Sources/AESwift/**/*'
end
