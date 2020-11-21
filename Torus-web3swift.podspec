Pod::Spec.new do |spec|
    spec.name         = 'Torus-web3swift'
    spec.version      = '3.0.7'
    spec.ios.deployment_target = "9.0"
    spec.osx.deployment_target = "10.11"
    spec.license      = { :type => 'Apache License 2.0', :file => 'LICENSE.md' }
    spec.summary      = 'Web3 implementation in vanilla Swift for iOS, macOS, and Linux'
    spec.homepage     = 'https://github.com/rathishubham7/web3swift'
    spec.author       = { "Shubham Rathi" => "rathishubham017@gmail.com" }
    spec.source       = { :git => 'https://github.com/rathishubham7/web3swift.git', :tag => spec.version.to_s }
    spec.source_files = "Sources/web3swift/{Contract,Convenience,EthereumABI,EthereumAddress,HookedFunctions,KeystoreManager,Promises,SwiftRLP,Transaction,Web3,Browser}/*.swift", "Sources/web3swift/{Tokens,Utils}/**/*.swift", "Sources/secp256k1/include/*.{h,c}"
    spec.vendored_libraries  = 'Sources/secp256k1/lib/libTorus-libsecp256k1.a'
    spec.preserve_paths = 'Sources/secp256k1'
    spec.pod_target_xcconfig = {
      'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}/Sources/secp256k1/include"',
      'LIBRARY_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}/Sources/secp256k1/lib"',
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
    spec.swift_version = '5.0'
    spec.module_name = 'web3swift'
    spec.frameworks = 'CoreImage'
    spec.dependency 'PromiseKit', '~> 6.13.1'
    spec.dependency 'BigInt', '~> 5.0'
    spec.dependency 'Starscream', '~> 3.1.0'
    spec.dependency 'CryptoSwift', '~> 1.0.0'
    spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
