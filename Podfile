# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'UranTestTask' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for UranTestTask
pod 'SVProgressHUD', :git => 'https://github.com/SVProgressHUD/SVProgressHUD.git'
pod 'Alamofire'
pod 'SwiftyJSON'

target "FileExhibitsLoader" do
    project 'FileExhibitsLoader/FileExhibitsLoader'
    inherit! :search_paths
    pod 'Alamofire'
    pod 'SwiftyJSON'
end

  target 'UranTestTaskTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'UranTestTaskUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
