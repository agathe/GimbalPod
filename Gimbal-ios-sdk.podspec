Pod::Spec.new do |s|
  s.name = "Gimbal-ios-sdk"
  s.version  = "1.23.1"
  s.summary  =  "The Gimbal SDK for iOS."
  s.homepage =  "http://www.gimbal.com/"
  s.platform     = :ios

  s.source       = { :git => 'http://github.com' }


  s.license = ""

  s.description = %{
    Super awesome SDK
  }


  s.frameworks = 'CoreBluetooth', 'CoreLocation' , 'CoreData', 'MapKit', 'Security'
  #s.library   = 'libz'

  s.ios.vendored_frameworks = "Frameworks/FYX.framework", "Frameworks/Common.embeddedframework/Common.framework", "Frameworks/ContextCore.embeddedframework/ContextCore.framework", "Frameworks/ContextLocation.embeddedframework/ContextLocation.framework", "Frameworks/ContextProfiling.embeddedframework/ContextProfiling.framework", "Frameworks/NetworkServices.embeddedframework/NetworkServices.framework"

  #s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => "'${PODS_ROOT}/Frameworks'" }
  
  s.ios.deployment_target = '6.0' # minimum SDK with autolayout
  s.osx.deployment_target = '10.7' # minimum SDK with autolayout
  s.requires_arc = true

  s.source_files = 'Frameworks/FYX.framework/Versions/A/Headers/*.h'
  s.preserve_paths = 'Frameworks'

  #s.compiler_flags = '-all_load', '-ObjC'

end