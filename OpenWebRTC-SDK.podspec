Pod::Spec.new do |s|
  s.name         = "OpenWebRTC-SDK"
  s.version      = "0.1.1"
  s.summary      = "Custom SDK for adding WebRTC to the app through OpenWebRTC"
  s.homepage     = "http://www.openwebrtc.io"
  s.license      = { :type => "BSD-2", :file => "LICENSE" }
  s.social_media_url = "https://twitter.com/OpenWebRTC"
  s.platform     = :ios, "8.0"
  s.source       = {
    # [Custom] Download sources from GitHub
    :git => 'https://github.com/AlertMe/openwebrtc-ios-sdk.git', :branch => 'custom'

    # [Developers only] This will use your local version
    # :path => "<path_to>/openwebrtc-ios-sdk"
  }
  s.source_files = "SDK/*.{h,m}"
  s.resources = "Resources/**"
  s.dependency 'OpenWebRTC'
  #s.resource = { :http => "https://github.com/EricssonResearch/openwebrtc/blob/master/bridge/client/sdp.js" }
  s.libraries = "c++", "resolv"
  s.framework = "OpenWebRTC"
  s.requires_arc = true
end

