require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))
version = package['version']

Pod::Spec.new do |s|
  s.name                   = 'react-native-streaming-audio-player'
  s.version                = version
  s.summary                = 'plaplapla'
  s.homepage               = 'https://github.com/oijusti/react-native-streaming-audio-player'
  s.license                = package['license']
  s.author                 = 'Oscar Justi <oijustisoft@gmail.com>'
  s.platforms              = { :ios => '10.0', :tvos => '12.0' }
  s.source                 = { :git => 'https://github.com/oijusti/react-native-streaming-audio-player.git', :tag => "v#{version}" }
  s.source_files           = 'ios/*.{h,m}'
  s.dependency 'React'
end
