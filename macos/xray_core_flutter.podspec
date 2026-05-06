Pod::Spec.new do |s|
  s.name             = 'XrayCoreSDK'
  s.version          = '0.2.3'
  s.summary          = 'Native FFI bridge for XrayCoreSDK.'
  s.description      = <<-DESC
Native FFI bridge for the XrayCoreSDK package.
                       DESC
  s.homepage         = 'https://github.com/wanliyunyan/xray_core_flutter'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'XrayCoreSDK contributors' => 'noreply@example.com' }

  s.source           = { :path => '.' }
  s.source_files     = '../src/**/*.{c,h}'
  s.public_header_files = '../src/include/**/*.h'
  s.dependency 'FlutterMacOS'
  s.platform = :osx, '10.14'
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES'
  }
end
