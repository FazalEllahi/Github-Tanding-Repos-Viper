# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'Github-Tanding-Rapos-Viper' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

#  pod 'Alamofire'
#  pod 'Nuke'
  pod "SkeletonView"
  pod 'lottie-ios'

end

post_install do |installer|
  installer.generated_projects.each do |project|
    project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings["DEVELOPMENT_TEAM"] = "J5MCF6VR6V"
#            config.build_settings["DEVELOPMENT_TEAM"] = "956349Z7GE" Live
         end
    end
  end
end
