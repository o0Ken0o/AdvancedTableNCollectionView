# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'AdvancedTableNCollectionView' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for AdvancedTableNCollectionView
  pod 'SwiftyJSON'
  pod 'Alamofire', '~> 4.5.0'
  pod 'SnapKit', '~> 4.0.0'
  pod 'RxSwift', '~> 4.0'
  pod 'RxCocoa', '~> 4.0'

  post_install do |installer|
    installer.pods_project.targets.each do |target|
        if target.name == '<insert target name of your pod here>'
            target.build_configurations.each do |config|
                config.build_settings['SWIFT_VERSION'] = '4.0'
            end
        end
    end
  end
end
