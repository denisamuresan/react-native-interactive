require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "Interactive"
  s.version      = package["version"]
  s.summary      = package["description"]

  s.homepage     = "https://github.com/woodpav/react-native-interactive"

  s.license      = "MIT"
  s.authors      = { "Tal Kol" => "talkol@gmail.com" }
  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/woodpav/react-native-interactive.git" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React'
end
