Pod::Spec.new do |spec|
    spec.name         = 'Torus-web3swift'
    spec.version      = '3.0.2'
    spec.ios.deployment_target = "9.0"
    spec.osx.deployment_target = "10.11"
    spec.license      = { :type => 'Apache License 2.0', :file => 'LICENSE.md' }
    spec.summary      = 'Web3 implementation in vanilla Swift for iOS, macOS, and Linux'
    spec.homepage     = 'https://github.com/rathishubham7/web3swift'
    spec.author       = { "Shubham Rathi" => "rathishubham017@gmail.com" }
    spec.source       = { :git => 'https://github.com/rathishubham7/web3swift.git', :tag => spec.version.to_s }
    spec.source_files = "Sources/web3swift/{Contract,Convenience,EthereumABI,EthereumAddress,HookedFunctions,KeystoreManager,Promises,SwiftRLP,Transaction,Web3,Browser}/*.swift", "Sources/web3swift/{Tokens,Utils}/**/*.swift"
    # spec.resource_bundle = { "Browser" => "Sources/web3swift/Browser/*.js" }
    spec.swift_version = '5.0'
    spec.module_name = 'web3swift'
    spec.frameworks = 'CoreImage'
    spec.dependency 'PromiseKit', '~> 6.13.1'
    spec.dependency 'BigInt', '~> 5.0'
    spec.dependency 'Starscream', '~> 3.1.0'
    spec.dependency 'CryptoSwift', '~> 1.0.0'
    spec.dependency 'secp256k1.c', '~> 0.1'
end
