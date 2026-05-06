Pod::Spec.new do |s|
  s.name             = 'xray_core_flutter'
  s.version          = '0.2.1'
  s.summary          = 'Native FFI bridge for xray_core_flutter.'
  s.description      = <<-DESC
Native FFI bridge for the xray_core_flutter SDK package.
                       DESC
  s.homepage         = 'https://github.com/wanliyunyan/xray_core_flutter'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'xray_core_flutter contributors' => 'noreply@example.com' }

  s.source           = { :path => '.' }
  s.source_files     = '../src/**/*.{c,h}'
  s.public_header_files = '../src/include/**/*.h'
  s.dependency 'FlutterMacOS'
  s.platform = :osx, '10.14'
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES'
  }
end
